package com.stock.service;

public class PageUtil {
	
	private int iJlSl = 0;     // 当前表中的记录数量

	private int iPageLen = 10; // 一页显示的记录数量

	private int iPageSl = 0;   // 当前表中的页数量

	private int iPageNo = 0;   // 当前显示的页号

	private int iPageJlSl = 0;   // 当前显示的页中的记录数量

	public PageUtil() {
		this.iJlSl = 0;
		this.iPageSl = 0;
	}

	public PageUtil(int jlsl) {
		this.iJlSl = jlsl;
		this.iPageSl = calcPageSl(jlsl, this.iPageLen);
	}

	public PageUtil(int jlsl, int pl) {
		this.iJlSl = jlsl;
		this.iPageLen = pl;
		this.iPageSl = calcPageSl(jlsl, pl);
	}

	public static int getPageNo(int pglen, int jlxh) {
		int pgnum = jlxh / pglen;
		return pgnum;
	}
	
	public boolean setJlsl(int jlsl) {
		this.iJlSl = jlsl;
		this.iPageSl = calcPageSl(jlsl, this.iPageLen);
		return true;
	}
	
	public int getJlSl() {
		return this.iJlSl;
	}
	
	public int getPageJlSl() {
		return this.iPageJlSl;
	}
	
	public int getPageSl() {
		return this.iPageSl;
	}
	
	public int getPageNo() {
		return this.iPageNo;
	}
	
	public void setPageNo(int PageNo) {
		if( PageNo >= iPageSl ) {
			this.iPageNo = iPageSl - 1;
			calcPageJlSl(this.iPageNo);
			return;
		}
		if( PageNo < 0 ) {
			this.iPageNo = 0;
			calcPageJlSl(this.iPageNo);
			return;
		}
		this.iPageNo = PageNo;
		calcPageJlSl(this.iPageNo);
	}
	
	public void setPageNo(String wayStr, int oldNo) {
		if( "1".equals(wayStr)) {
			this.iPageNo = 0;
			return;
		}
		if( "-1".equals(wayStr)) {
			setPageNo(oldNo - 1);
			return;
		}
		if( "+1".equals(wayStr)) {
			setPageNo(oldNo + 1);
			return;
		}
		if( "n".equals(wayStr)) {
			this.iPageNo = iPageSl - 1;
			return;
		}
	}
	
	public int getPageBegin() {
		return 1 + this.iPageNo * this.iPageLen;
	}
	
	public int getPageEnd() {
		int iRtn = this.iPageNo * this.iPageLen + this.iPageLen;
		if( iRtn > this.iJlSl )
			return this.iJlSl;
		return iRtn;
	}
	
	private static int calcPageSl(int jlSl, int pageLen) {
      return (jlSl+pageLen-1)/pageLen;
	}

	private int calcPageJlSl(int PageNo) {
		if( PageNo + 1 < this.iPageSl )
			this.iPageJlSl = this.iPageLen;
		else
			this.iPageJlSl = this.iJlSl - (this.iPageSl - 1) * this.iPageLen;
		return this.iPageJlSl;
	}

	public int getIPageLen() {
		return iPageLen;
	}
	
}
