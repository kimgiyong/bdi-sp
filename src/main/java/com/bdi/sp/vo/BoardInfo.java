package com.bdi.sp.vo;

import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("board")
public class BoardInfo {
	
	private Integer binum;
	private String bititle;
	private String bitext;
	private String bifile;
	private String bicredat;
	private String bimoddat;
	private Integer bicnt;
	private Integer uinum;
	private Integer biactive;
//	private List<Japan> jList;
	public Integer getBinum() {
		return binum;
	}
	public void setBinum(Integer binum) {
		this.binum = binum;
	}
	public String getBititle() {
		return bititle;
	}
	public void setBititle(String bititle) {
		this.bititle = bititle;
	}
	public String getBitext() {
		return bitext;
	}
	public void setBitext(String bitext) {
		this.bitext = bitext;
	}
	public String getBifile() {
		return bifile;
	}
	public void setBifile(String bifile) {
		this.bifile = bifile;
	}
	public String getBicredat() {
		return bicredat;
	}
	public void setBicredat(String bicredat) {
		this.bicredat = bicredat;
	}
	public String getBimoddat() {
		return bimoddat;
	}
	public void setBimoddat(String bimoddat) {
		this.bimoddat = bimoddat;
	}
	public Integer getBicnt() {
		return bicnt;
	}
	public void setBicnt(Integer bicnt) {
		this.bicnt = bicnt;
	}
	public Integer getUinum() {
		return uinum;
	}
	public void setUinum(Integer uinum) {
		this.uinum = uinum;
	}
	public Integer getBiactive() {
		return biactive;
	}
	public void setBiactive(Integer biactive) {
		this.biactive = biactive;
	}
	@Override
	public String toString() {
		return "BoardInfo [binum=" + binum + ", bititle=" + bititle + ", bitext=" + bitext + ", bifile=" + bifile
				+ ", bicredat=" + bicredat + ", bimoddat=" + bimoddat + ", bicnt=" + bicnt + ", uinum=" + uinum
				+ ", biactive=" + biactive + "]";
	}
	
/*	public List<Japan> getjList() {
		return jList;
	}
	public void setjList(List<Japan> jList) {
		this.jList = jList;
	}*/
	
	
	
}
