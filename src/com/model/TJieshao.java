package com.model;

/**
 * TJieshao generated by MyEclipse Persistence Tools
 */

public class TJieshao implements java.io.Serializable
{

	// Fields

	private String id;

	private String neirong;

	// Constructors

	/** default constructor */
	public TJieshao()
	{
	}

	/** full constructor */
	public TJieshao(String neirong)
	{
		this.neirong = neirong;
	}

	// Property accessors

	public String getId()
	{
		return this.id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	public String getNeirong()
	{
		return this.neirong;
	}

	public void setNeirong(String neirong)
	{
		this.neirong = neirong;
	}

}