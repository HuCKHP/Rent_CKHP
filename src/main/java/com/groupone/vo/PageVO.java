package com.groupone.vo;

public class PageVO {
   private int startNo;// 게시판테이블,회원테이블의 필드와는 직접관계없음.
   private int endNo; //한 페이지의 끝 게시글 rownum
   private int perPageNum=6; //페이지 당 게시글 수
   private Integer page;// jsp단에서 null로 값이 올때 에러가 발생하지 않도록 Integer사용 int와 Integer의 차이
   private int totalCount;
   private int endPage;
   private int startPage;
   private boolean prev;
   private boolean next;
   // 검색용 변수 2개 추가
   private String searchType;
   private String searchKeyword;

   public int getEndNo() {
      return endNo;
   }

   public void setEndNo(int endNo) {
      this.endNo = endNo;
   }

   public String getSearchType() {
      return searchType;
   }

   public void setSearchType(String searchType) {
      this.searchType = searchType;
   }

   public String getSearchKeyword() {
      return searchKeyword;
   }

   public void setSearchKeyword(String searchKeyword) {
      this.searchKeyword = searchKeyword;
   }

   private void calcPage() {
      // DB쿼리에서 사용... 시작데이터번호 = (jsp클릭한 페이지번호-1)*페이지당 보여지는 개수
      startNo = (this.page - 1) * perPageNum+ 1; 
      // page변수는 현재 jsp에서 클릭한 페이지번호
      //만약 2페이지라면 11-20번글이 와야하기 때문에 첫글번호는 (2-1)*10+1=11
      // 시작글번호는 변함이 없으니 이대로 고정
      
      int tempEnd = (int) (Math.ceil(page / (double) this.perPageNum) * this.perPageNum);
      //1-10번째 페이지만 처음에 출력되고 11-20까지는 다음버튼을 눌렀을 시 나온다. 
      //126개의 게시물이 있다면 100개까진 첫화면에 26개는 2번째 화면에 출력
      
      // ceil함수는 천장 함수로 1.1 = 2, 2.1 = 3 으로 출력된다.
      // jsp에서 클릭한 페이지번호를 기준으로 끝 페이지를 계산한다.
      this.startPage = (tempEnd - this.perPageNum)+1;
      // 시작 페이지 계산 클릭한page번호 10일때 까지 시작페이지는 1
      if (tempEnd * this.perPageNum > this.totalCount) {
         // 클릭한 page번호로 계산된 게시물수가 실제 게시물개수 totalCount 클때
         this.endPage = (int) Math.ceil(this.totalCount / (double) this.perPageNum);
         //this.endNo = startNo + this.perPageNum-1;
         if(endPage!=page) { //현재페이지가 마지막 페이지라면 게시글 갯수가 10개가 되지 않을수도 있으니 확인후 보정
       	  this.endNo = startNo + this.perPageNum-1;
         }else {
       	  this.endNo = startNo + this.totalCount % 6-1;
         }
      } else {
         // 클릭한 page번호로 계산된 게시물수가 실제 게시물개수 totalCount 작을때
         this.endPage = tempEnd;
         this.endNo = startNo + this.perPageNum-1;
         //this.endNo = startNo + this.totalCount % 10-1;
      }
      

      this.prev = this.startPage != 1;// 시작페이지 1보다 크면 무조건 이전 페이지가 있음. true
      this.next = this.endPage * this.perPageNum < this.totalCount;
      // 클릭한 page번호로 계산된 게시물수가 실제 게시물 개수보다 작다면 다음페이지가 있음. true
   }

   public int getTotalCount() {
      return totalCount;
   }

   public void setTotalCount(int totalCount) {
      this.totalCount = totalCount;
      calcPage();// totalCount 전제게시물개수가 있어야지 페이지계산을 할 수 있기 때문에
   }

   public int getEndPage() {
      return endPage;
   }

   public void setEndPage(int endPage) {
      this.endPage = endPage;
   }

   public int getStartPage() {
      return startPage;
   }

   public void setStartPage(int startPage) {
      this.startPage = startPage;
   }

   public boolean isPrev() {
      return prev;
   }

   public void setPrev(boolean prev) {
      this.prev = prev;
   }

   public boolean isNext() {
      return next;
   }

   public void setNext(boolean next) {
      this.next = next;
   }

   public Integer getPage() {
      return page;
   }

   public void setPage(Integer page) {
      this.page = page;
   }

   public int getStartNo() {

      return startNo;
   }

   public void setStartNo(int startNo) {
      this.startNo = startNo;
   }

   public int getPerPageNum() {
      return perPageNum;
   }

   public void setPerPageNum(int perPageNum) {
      this.perPageNum = perPageNum;
   }
   
}   