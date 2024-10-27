package com.baeldung.model;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Invoice {

    private Long id;
    private String clientName;
    private String description;
    private Double amount;
    private Double taxes;
    private Double totalAmount;

    public Invoice() {
        super();
    }

    public Invoice(final Double totalAmount, final Long id, final String description, final Double amount, final Double taxes, final String clientName){


        this.id = id;
        this.description = description;
        this.clientName = clientName;
        this.amount = amount;
        this.taxes = taxes;
        calculateTotalAmount();

    }

    public  Long getId(){ return  id;}
    public  void setId(Long id){ this.id = id;}

    public  String getClientName(){ return  clientName;}
    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public  String getDescription(){ return  description;}
    public void setDescription(String description) {
        this.description = description;
    }

    public  Double getAmount(){ return  amount;}
    public void setAmount(Double amount) {
        this.amount = amount;
        calculateTotalAmount();
    }

    public  Double getTaxes(){ return  taxes;}
    public void setTaxes(Double taxes) {
        this.taxes = taxes;
        calculateTotalAmount();
    }

    public Double getTotalAmount() {
        calculateTotalAmount();
        return totalAmount; }
    private void calculateTotalAmount() {
        if (this.amount != null && this.taxes != null) {
            double ivaAmount = this.amount * this.taxes / 100;
            this.totalAmount = ivaAmount + this.amount;
            System.out.println("Me estoy ejecutando");

        }
    }

    @Override
    public String toString() {
        return "Invoice [totalAmount=" + totalAmount + ",taxes=" + taxes + ",id=" + id + ", clientName=" + clientName + ", description=" + description + ", amount=" + amount + "]";
    }
}
