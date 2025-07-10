package com.spring.sales.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorker;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.css.StyleAttrCSSResolver;
import com.itextpdf.tool.xml.html.CssAppliersImpl;
import com.itextpdf.tool.xml.html.Tags;
import com.itextpdf.tool.xml.parser.XMLParser;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;
import com.spring.menu.dto.MyMenuDto;
import com.spring.menu.service.MenuService;
import com.spring.monthly.service.MonthlyService;
import com.spring.monthly.vo.MonthlyVo;
import com.spring.recruit.vo.RecruitVo;
import com.spring.sales.dto.ReportDto;
import com.spring.sales.service.SalesService;
import com.spring.sales.vo.SalesVo;
import com.spring.schedule.service.ScheduleService;
import com.spring.schedule.vo.ScheduleVo;


@Controller
public class SalesController {
	
	@Autowired
	SalesService sService;
	
	@Autowired
	MonthlyService mService;
		
	@Autowired
	MenuService menuService;

	
	
	
	
//	매출 엑셀 파일 업로드
	@ResponseBody
	@RequestMapping(value="/sales/excelUpload.do", produces = "application/text; charset=utf8", method = RequestMethod.POST)
	public Map<String, String> salesExcelUpload(MultipartHttpServletRequest request,
			HttpSession session) throws Exception {
		Map<String, String> result = new HashMap<String, String>();
		MultipartFile excelFile = request.getFile("excelFile");
		OPCPackage opcPackage = OPCPackage.open(excelFile.getInputStream());
		RecruitVo recruit = (RecruitVo)session.getAttribute("recruit");
		
		System.out.println("#########넘어오는 세션 아이디 체크"+ recruit.getId());
		
		try {
		if(excelFile != null && !excelFile.isEmpty()) {
			// 파일 위치 지정
			File destFile = new File("D:\\DE\\test\\sales_upload"+excelFile.getOriginalFilename());
			// 업로드 파일은 지우고
			destFile.delete();
			// 엑셀 파일 생성해줌
			excelFile.transferTo(destFile);
			// 서비스 호출
			sService.excelUpload(destFile, recruit);	
			List<MonthlyVo> monthTotalList = sService.selectSalesTotal();
			
			for(int i = 0; i < monthTotalList.size(); i++) {
				System.out.println("등록되는지 체크"+monthTotalList.get(i).getTotalPrice());
				System.out.println("등록되는지 체크"+monthTotalList.get(i).getId());
			};
			
			mService.insertMonthTotal(monthTotalList);
			result.put("code", "1");
			result.put("msg", "업로드 성공");

			
			
			return result;
		} else {
			result.put("code", "0");
			result.put("msg", "업로드 실패");
			return result;
			}
		} catch (Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	@RequestMapping(value="/", method = RequestMethod.GET )
	public String salesCafe24Main() {
		
		return "sales/index";
				
	}
	
	
	// 로그인 후 메인화면으로 가는곳
	@RequestMapping(value="/sales/main.do", method=RequestMethod.GET)
	public String salesMain(Model model, HttpSession session) {
			
		RecruitVo recruit = (RecruitVo) session.getAttribute("recruit");
		// 세션 로그인 정보 확인하여 없으면 로그인 창으로
		if(recruit == null) {
			return "sales/login";
		}
		
		
		List<MyMenuDto> mList = menuService.selectMyMenuList(recruit.getId());
		
		model.addAttribute("myMenu" , mList);
		model.addAttribute("recruit", recruit);	
		return "sales/index";
	}
	
	
	@RequestMapping(value="/sales/login.do",method=RequestMethod.GET)
	public String salesLogin(Model model) {
		
		return "sales/login";
	}
	
	
	@RequestMapping(value="/sales/logout.do", method = RequestMethod.GET)
	public String salesLogout(HttpSession session) {
		
		RecruitVo recruit = (RecruitVo)session.getAttribute("recruit");
		
		if(recruit != null) {
			session.invalidate();
		}
		
		return "sales/login";
	}
	
	
	
	// 저장된 데이터값 가져오기
	@RequestMapping(value="/sales/salesView.do", method = RequestMethod.GET)
	public String salesView(HttpSession session,
			Model model) {
		
		RecruitVo recruit = (RecruitVo) session.getAttribute("recruit");
		
		if(recruit == null) {
			return "sales/login";
		}		
		
		List<SalesVo> salesList = sService.selectSalesList();
		model.addAttribute("recruit", recruit);
		model.addAttribute("salesList", salesList);
		
		
		return "sales/salesView";
	}

	
	@RequestMapping(value="/sales/scheduleView.do", method = RequestMethod.GET)
	public String salesScheduleView(HttpSession session,
			Model model) {
		
		RecruitVo recruit = (RecruitVo)session.getAttribute("recruit");
		
		if(recruit == null) {
			return "sales/login";
		}
		

		return "sales/scheduleView";
	}
	
	@RequestMapping(value="/sales/reportView.do", method = RequestMethod.GET)
	public String salesReportView() {
		
		return "sales/reportView";
	}
	
	@RequestMapping(value="/sales/chartView.do", method = RequestMethod.GET)
	public String salesChartView() {
		
		
		
		return "sales/chartView";
	}
	
	@RequestMapping(value="/sales/example.do", method = RequestMethod.GET)
	public String example() {
		
		return "sales/example";
	}
	
	
	// 문서 pdf로 다운 
	@RequestMapping(value="/sales/pdfDownload.do", method = RequestMethod.POST)
	@ResponseBody
	public String pdfDownload(ReportDto report) {
		
		
		
		// 파일명
		String fileName = report.getDocType() +".pdf";
		
		// pdf 떨구는 경로 프로젝트 내부에 떨굼
		String pdfFileName = "D:\\DE\\test\\springBoard\\src\\main\\webapp\\resources\\"+fileName;
		
		// pdf 구성할 html 
		// 파일명에 따라 html을 바꿔주삼
		
		String html = "";
		
		html = "<html>" + "<head></head>" + "<body>" + "<div>여기를 이뿌게 꾸미세요 성수씨</div>"  + "</body>"
				+ "</html>";
				
		System.out.println("넘어오는지는 확인"+ report.getDocType());
		if(report.getDocType().equals("receipt")) {
			html = "<html><head></head><body>" +
					"<div style='width:100%; height:100%; display:flex; justify-content:center; align-items:center; background-color:#grey; padding:50px; box-sizing:border-box;'>"+
			        
					"<div style='border:3px solid black; padding:30px; width:600px; background-color:white; box-sizing:border-box;'>" +

					"<div style='width:100%; border:1px solid black; padding:30px; box-sizing:border-box;'>" +

			        "<div style='text-align:center; font-size:24px; font-weight:bold; margin-bottom:20px; letter-spacing:10px;'>영 수 증</div>" +

			        "<div style='text-align:right; font-weight:bold; margin-bottom:15px;'>"+report.getWriter() +" 귀하</div>" +

			        "<div style='background-color:#e9f7ef; padding:10px; margin-bottom:20px; text-align:center;'>" +
			        "<div style='font-weight:bold; font-size:16px;'>₩ "+ report.getAmountKorea() +" 원정 </div>" +
			        "<div style='font-size:20px; font-weight:bold; color:#000;'>₩ "+ report.getAmount() +"</div>" +
			        "</div> <br /> <br />"+

			        "<div style='text-align:center; font-size:14px; margin-bottom:30px;'>" +
			        "상기 금액을 <span style='font-weight:bold; text-decoration:underline;'>"+report.getReceiptContent()+"</span> (으)로<br />" +
			        "정히 영수 합니다." +
			        "</div> <br /> <br />" +

			        "<div style='background-color:#f1f1f1; padding:15px; font-size:14px; line-height:1.6;'>" +
			        "<div>성명: "+ report.getRecipientName() +"&nbsp;&nbsp;&nbsp;&nbsp; (인)</div>" +
			        "</div>" +

			        "<div style='text-align:right; margin-top:30px; font-size:13px; color:#666;'>발행사: "+report.getPublisher()+"</div>" +
			        "</div>"+
			        "</div>"+ 
			        "</div>"+ 
			        "</body></html>";
			
		}else if(report.getDocType().equals("document")) {
			html = "<html><head></head><body>" +
		
				    "<div style='width:100%; height:100%; display:flex; justify-content:center; align-items:center; background-color:#grey; padding:50px; box-sizing:border-box;'>"+
					"<div style='border:3px solid black; padding:30px; width:600px; background-color:white; box-sizing:border-box;'>"+
					"<div style='width:100%; border:1px solid black; padding:30px; box-sizing:border-box;'>"+
				        "<div style='text-align:center; font-size:24px; font-weight:bold; margin-bottom:20px; letter-spacing:10px;'>"
				        + report.getCompanyName()
				        + "</div><hr />"+
				        "<div style='padding:10px; margin-bottom:20px; text-align:left;'>"+
				        "<div>문서 번호 : "+ report.getDocumentNo() +"+</div><br />"+
				        "<div>발송 일자 : "+ report.getSendDate() +"</div><br />"+
				        "<div>수   신 :"+ report.getDocRecipientName() +"</div><br />"+
				        "<div>참   조 :"+ report.getCcName() +"</div><br />"+
				        "<div>제   목 : "+ report.getDocTitle() +"</div>"+
				        "</div>"+ 
				        "<hr  />"+
						"<div>1. 귀사의 일익 번창을 기원합니다.</div><br />"+
						"<div>2. 귀사에 아래와 같은 사유로 요청을 드리니 검토하시고 협조하여 주시기 부탁드립니다.</div><br />"+
						"<div>3. 항상 감사드립니다</div><br />"+
				        "<div style='text-align:center; font-size:20px; margin-bottom:30px; font-weight:bold'>"+ 
							"- 아 래 -"+
				        "</div> <br /> <br />"+ 
				        "<div style='text-align:center; font-size:14px; margin-bottom:30px;'>"+ 
							report.getDocContent()+
				        "</div> <br /> <br />"+ 

				        "<div style='padding:15px; font-size:20px; line-height:1.6; text-align:center;  font-weight:bold;'>"+ 
				        "<div>"+ report.getCompanyName() +"</div>"+ 
				        "</div>"+
				
				        "</div>"+
				        "</div>"+ 
				        "</div>"+ 	
			        "</body></html>";
		}else {
			html = "<html><head></head><body>" +
			
	    	"<div style='width:100%; height:100%; display:flex; justify-content:center; align-items:center; background-color:#grey; padding:50px; box-sizing:border-box;'>"+
	    	"<div style='border:3px solid black; padding:30px; width:600px; background-color:white; box-sizing:border-box;'>"+
	
			"<div style='width:100%; border:1px solid black; padding:30px; box-sizing:border-box;'>"+
	
	        "<div style='text-align:center; font-size:24px; font-weight:bold; margin-bottom:20px; letter-spacing:10px;'>협 조 문</div>"+
			"<hr />"+
	
	        "<div style='padding:10px; margin-bottom:20px; text-align:left;'>"+
	        "<div>문서번호 : "+report.getCoopStateNo()+"</div><br />"+
	        "<div>시행일자 : "+report.getStartDate()+"</div><br />"+
	        "<div>수 신 처: "+report.getCoopRecipientName()+"</div><br />"+
	        "<div>발 신 처 : "+report.getCoopStateCompany()+"</div><br />"+
	        "<div>제  목 : "+report.getCoopStateTitle()+"</div>"+
	        "</div>"+
			
			"<div>귀사에 아래와 같은 사유로 요청을 드리니 검토하시고 협조하여 주시기 부탁드립니다.</div><br />"+
			"<hr />"+
			
	        "<div style='text-align:center; font-size:20px; margin-bottom:30px; font-weight:bold'> "+
			"	- 아 래 "+
	        "</div> <br /> <br /> "+
	        "<div style='text-align:center; font-size:14px; margin-bottom:30px;'> "+
				report.getCoopStateContent()+
	        "</div> <br /> <br />"+
	
	        "<div style='padding:15px; font-size:20px; line-height:1.6; text-align:center;  font-weight:bold;'> "+
	        "<div>주식회사 회사명</div> "+
	        "</div>"+
	
	        "</div>"+
	        "</div>"+ 
	        "</div>"+ 
 			"</body></html>";
		}
		
		
		

		try (FileOutputStream os = new FileOutputStream(pdfFileName)) {
			Document document = new Document(PageSize.A4, 10, 10, 10, 10);
			PdfWriter writer = PdfWriter.getInstance(document, os);
			document.open();
			
			//XMLWorkerHelper helper = XMLWorkerHelper.getInstance();
			StyleAttrCSSResolver cssResolver = new StyleAttrCSSResolver();
			
			// 디자인은 여기서 변경 
			try (FileInputStream cssStream = new FileInputStream("C:\\project\\css1.css")) { 
				cssResolver.addCss(XMLWorkerHelper.getCSS(cssStream));
			}
			try (FileInputStream cssStream = new FileInputStream("C:\\project\\css2.css")) {
				cssResolver.addCss(XMLWorkerHelper.getCSS(cssStream));
			}
			
			XMLWorkerFontProvider font = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
			font.register("c:/windows/fonts/malgun.ttf", "MalgunGothic"); // 폰트 설정
			CssAppliersImpl cssAppliers = new CssAppliersImpl(font);
			HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
			htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());

			PdfWriterPipeline pdfPipeline = new PdfWriterPipeline(document, writer);
			HtmlPipeline htmlPipeline = new HtmlPipeline(htmlContext, pdfPipeline);
			CssResolverPipeline cssResolverPipeline = new CssResolverPipeline(cssResolver, htmlPipeline);

			XMLWorker worker = new XMLWorker(cssResolverPipeline, true);

			XMLParser xmlParser = new XMLParser(true, worker, Charset.forName("UTF-8"));
			try (StringReader strReader = new StringReader(html)) {
				xmlParser.parse(strReader);
			}

			document.close();

	    	
		} catch (Throwable e) {
			e.printStackTrace();
		}
		

		return fileName;
	}
	

	// 다운로드한 pdf를 viewer로 오픈
	@RequestMapping(value = "/sales/{pdfName}/pdfView.do", method = RequestMethod.GET)
	public String boardView(Locale locale, Model model
			,@PathVariable("pdfName")String pdfName
			) throws Exception{
		
	
		model.addAttribute("pdfName", pdfName);
		
		return "sales/pdfView";
	}
	
	
	
}
