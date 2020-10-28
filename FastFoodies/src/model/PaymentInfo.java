package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PAYMENT_INFO")

public class PaymentInfo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="ID")
	private String creditCardNumber = null;
	
	@Column(name="ID")
	private String expirationMonth = null;
	
	@Column(name="ID")
	private String expirationYear = null;
	
	@Column(name="ID")
	private String cvvCode = null;
	
	@Column(name="ID")
	private String cardHolderName = null;
	
	public int getId() {
		return this.id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getCreditCardNumber() {
		return creditCardNumber;
	}
	
	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}
	
	public String getExpirationMonth() {
		return expirationMonth;
	}
	
	public void setExpirationMonth(String expirationMonth) {
		this.expirationMonth = expirationMonth;
	}
	
	public String getExpirationYear() {
		return expirationYear;
	}
	
	public void setExpirationYear(String expirationYear) {
		this.expirationYear = expirationYear;
	}
	
	public String getCvvCode() {
		return cvvCode;
	}
	
	public void setCvvCode(String cvvCode) {
		this.cvvCode = cvvCode;
	}
	
	public String getCardHolderName() {
		return cardHolderName;
	}
	
	public void setCardHolderName(String cardHolderName) {
		this.cardHolderName = cardHolderName;
	}
	
}
