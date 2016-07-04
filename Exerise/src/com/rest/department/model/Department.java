package com.rest.department.model;


import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlAccessorType(XmlAccessType.NONE)
@XmlRootElement(name="departmet")

public class Department {
	public Integer deptno;
	public String dname;
	public String loc;
	
		public void delete(Integer deptno){
	 deptEjb deptejb=new deptEjb();
	 deptejb.deleteDepartment(deptno);
}
	
	
	@XmlElement(required=true)
	public Integer getDeptno() {
		return deptno;
	}
	public void setDeptno(Integer deptno) {
		this.deptno = deptno;
	}
	
	@XmlElement(required=true)
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	
	@XmlElement(required=true)
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}

}
