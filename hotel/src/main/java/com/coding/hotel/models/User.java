package com.coding.hotel.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PostPersist;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="user")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private Long id;
	
	@NotBlank(message="Enter your first name.")
//	@Size(min=2, max=100)
	private String firstName;
	
	@NotBlank(message="Enter your last name.")
	private String lastName;
	
	@NotNull(message="Age must be at least 18 years old.")
	private Long age;
	
	@NotBlank(message="Enter your email")
	@Email
	private String email;
	
	@Size(min=5, max=300, message="Password is required")
	private String password;
	
	@NotBlank(message="Confirm your password")
	@Transient
	private String password_confirmation;
	
	
	@OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Hotel> rooms;

	
	@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "user_room", 
            joinColumns = @JoinColumn(name = "user_id"), 
            inverseJoinColumns = @JoinColumn(name = "room_id")
        )
     private List<Hotel> manyRoom;


	public List<Hotel> getManyRoom() {
		return manyRoom;
	}

	public void setManyRoom(List<Hotel> manyRoom) {
		this.manyRoom = manyRoom;
	}

	public List<Hotel> getRooms() {
		return rooms;
	}

	public void setRooms(List<Hotel> rooms) {
		this.rooms = rooms;
	}

	@Column(updatable =false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	@PrePersist
		protected void onCreate() {
			this.createdAt=new Date();
	}
	
	@PostPersist
		protected void onUpdate() {
			this.updatedAt = new Date();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Long getAge() {
		return age;
	}

	public void setAge(Long age) {
		this.age = age;
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword_confirmation() {
		return password_confirmation;
	}

	public void setPassword_confirmation(String password_confirmation) {
		this.password_confirmation = password_confirmation;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
}
