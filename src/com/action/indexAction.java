package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TJieshaoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TJieshaoDAO jieshaoDAO;
	public TJieshaoDAO getJieshaoDAO()
	{
		return jieshaoDAO;
	}

	public void setJieshaoDAO(TJieshaoDAO jieshaoDAO)
	{
		this.jieshaoDAO = jieshaoDAO;
	}

	public String index()
	{
		String sql="from TJieshao where id=1";
		List list=jieshaoDAO.getHibernateTemplate().find(sql);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("jieshao", list.get(0));
		return ActionSupport.SUCCESS;
	}
	public String indexYisheng()
	{
		String sql="from TJieshao where id=1";
		List list=jieshaoDAO.getHibernateTemplate().find(sql);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("jieshao", list.get(0));
		return ActionSupport.SUCCESS;
	}
}