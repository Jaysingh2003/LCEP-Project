package com.unstop.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;



@Entity
public class Event {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long eventId;
	@Column(nullable = false)
	private String eventTitle;
	@Column(nullable = false)
	private String eventDescription;
	@Column(nullable = false)
	private String eventAddress;
	@Column(nullable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private Date eventTime;

	private String category;

	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private Date eventPostTime;

	

	@ManyToOne( cascade = CascadeType.ALL)
	private User eventOrganizer;

	@Lob
    private byte[] eventImage;
	
	public Event() {
		super();

	}

	public Event(Long eventId, String eventTitle, String eventDescription, String eventAddress, Date eventTime,
			User eventOrganizer) {
		this.eventId = eventId;
		this.eventTitle = eventTitle;
		this.eventDescription = eventDescription;
		this.eventAddress = eventAddress;
		this.eventTime = eventTime;
		this.eventOrganizer = eventOrganizer;
	}

	public Long getEventId() {
		return eventId;
	}

	public void setEventId(Long eventId) {
		this.eventId = eventId;
	}

	public String getEventTitle() {
		return eventTitle;
	}

	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public String getEventAddress() {
		return eventAddress;
	}

	public void setEventAddress(String eventAddress) {
		this.eventAddress = eventAddress;
	}

	public Date getEventTime() {
		return eventTime;
	}

	public void setEventTime(Date eventTime) {
		this.eventTime = eventTime;
	}

	public User getEventOrganizer() {
		return eventOrganizer;
	}

	public void setEventOrganizer(User eventOrganizer) {
		this.eventOrganizer = eventOrganizer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Date getEventPostTime() {
		return eventPostTime;
	}

	public void setEventPostTime(Date eventPostTime) {
		this.eventPostTime = eventPostTime;
	}

	public byte[] getEventImage() {
		return eventImage;
	}

	public void setEventImage(byte[] eventImage) {
		this.eventImage = eventImage;
	}
	
	@Override
	public String toString() {
		return "Event [eventId=" + eventId + ", eventTitle=" + eventTitle + ", eventDescription=" + eventDescription
				+ ", eventAddress=" + eventAddress + ", eventTime=" + eventTime + ", eventOrganizer=" + eventOrganizer
				+ "]";
	}

}
