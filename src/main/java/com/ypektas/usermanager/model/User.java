package com.ypektas.usermanager.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table
public class User implements Serializable {
	
	private static final long serialVersionUID = 6541162783907686900L;

	@Id
    @GeneratedValue
    private int id;
	
	@Column
	private String username;
	
	@Column
	private String lastname;
	
	@Column
	private String blood;
	
	@Column
	private String phone;
	
	@Column
	private String address;
	
	/*
	 * @Version private long version;
	 */
	
	// Constructors
	
	public User() {
		super();
	}
	
	
	public User(int id, String username, String lastname, String blood, String phone, String address) {
		super();
		this.id = id;
		this.username = username;
		this.lastname = lastname;
		this.blood = blood;
		this.phone = phone;
		this.address = address;
	}
	
	
		  







	// Getters and Setters
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
   
	
	

	/*
	 * public User(String username) { super(); this.username = username; }
	 */

	/*
	 * public int getId() { return id; }
	 * 
	 * public void setId(int id) { this.id = id; }
	 * 
	 * public String getUsername() { return username; }
	 * 
	 * public void setUsername(String username) { this.username = username; }
	 */

	/*
	 * public long getVersion() { return version; }
	 * 
	 * public void setVersion(long version) { this.version = version; }
	 */
	
	
}
