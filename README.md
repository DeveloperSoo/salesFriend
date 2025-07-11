# SalesFriend(영업지원 시스템)


## 개발일정
  2025/06/30 ~ 2025/07/10


## 기획 의도

- 과거 영업사원으로 재직시 ERP를 사용함에도 현저히 부족한 영업지원 시스템으로 인해 불필요한 업무량이 발생하였습니다.
    이를 자동화 시키고자 개인별 매출 현황과 공문서 제작, 사내 일정 공유 등 보다 원활한 영업지원 시스템을 통해 업무 환경을 개선 시켜보기위해 SalesFriend를 제작하게 되었습니다.

## 프로젝트 개발환경

- DB => mariaDB
- Server => Tomcat
- Eclipse


## 배포 환경 (url = http://salesfriend.cafe24.com/sales/main.do)
- 서버 : 예스24 웹 호스팅 서비스 이용
- DB : AWS 인스턴스내에 Mysql(8.0.42.ver) RDS를 추가 연동하여 구현하였습니다.
- ip(15.164.94.92) : WAS 인스턴스와 DB 인스턴스(RDS)를 구별하여 단일 인스턴스내에 부하를 줄이고 원활한 제공이 가능하도록 구현하였습니다.

## 기술 스택

![HTML](https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS](https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
<br>
![Tomcat](https://img.shields.io/badge/apache%20tomcat-F8DC75?style=for-the-badge&logo=apache%20tomcat&logoColor=black)
![GitHub](https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white)
![Java](https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white)


# 프로젝트 아키텍쳐-3계층 구조(Three-Tier Architecture) 
MVC패턴(Model-View-Controller)

# 주요기능



### 매출등록

|기능명|상세|
|--|--|
|엑셀 업로드|정해진 양식의 엑셀파일을 업로드할 경우 엑셀파일을 읽어 DB에 저장을 진행해줍니다.|
|엑셀 파일 자동 삭제|엑셀파일이 쌓일 경우 DB 및 저장 폴더에 용량 과부하를 방지하기위해 내용은 저장후 자동 삭제됩니다. |


### 일정관리

|기능명|상세|
|--|--|
|일정 등록| 로그인한 회원의 ID와 함께 일자, 제목, 내용을 적을수 있습니다.|
|일정 수정| 본인이 등록한 일정에 한해서 내용 및 일자를 수정할 수 있습니다.|
|일정 삭제| 본인이 등록한 일정을 삭제할 수 있습니다. |


### 문서 생성

|기능명|상세|
|--|--|
|PDF 출력| 업무간 필요한 영수증, 공문, 협조문 중 택 1 하여 내용을 기재하여 등록하면 해당 내용틀에 맞춰 PDF 파일을 제공합니다.|


### 매출 통계

|기능명|상세|
|--|--|
|올해 월별 계|등록된 올해 매출을 월별로 Line 차트를 제공합니다.|
|담당자간 매출 통계|등록된 매출을 추려 담당자별로 Pie 차트를 제공합니다.|
|상품별 매출|등록된 매출 중 상위 매출 5개의 상품을 Bar 차트로 제공합니다.|

### 마이메뉴

|기능명|상세|
|--|--|
|마이메뉴 저장|제공되는 7개의 기능 중 사용자가 원하는 기능들만 선택할시 메인화면에서 해당 기능만 바로 확인할 수 있도록 합니다.|



## 화면 구현


<details>
<summary>
1. 메인화면
</summary>
<img width="1887" height="894" alt="Image" src="https://github.com/user-attachments/assets/a6ab7036-1296-4150-a096-1e42a7204e83" />
</details>

<details>
<summary>
2. 매출 등록
</summary>
<img width="1913" height="861" alt="Image" src="https://github.com/user-attachments/assets/91d9c79a-82c0-4b9c-8672-7c44cd95488d" alt="매출등록"/>
</details>

<details>
<summary>
3. 일정 관리
</summary>
<img width="1905" height="896" alt="Image" src="https://github.com/user-attachments/assets/213d59fd-d53c-4ddd-a466-fa8593c55c24" alt="일정관리" />
</details>

<details>
<summary>
4. 문서 생성
</summary>
<img width="1864" height="897" alt="Image" src="https://github.com/user-attachments/assets/59588cda-d610-46a6-82e9-fb93070b8206" alt="문서생" />
</details>

<details>
<summary>
5. 매출 통계
</summary>
<img width="1890" height="896" alt="Image" src="https://github.com/user-attachments/assets/40ee5f61-bee6-4dac-a54a-beff8929c83f" />
</details>


<details>
<summary>
6, 마이메뉴
</summary>
<img width="1900" height="903" alt="Image" src="https://github.com/user-attachments/assets/6645c72e-6ff8-4ee9-9ec3-c414453270b0" alt="마이메뉴" />
</details>
