package com.baeldung.web.controller;

import java.util.HashMap;
import java.util.Map;

import com.baeldung.model.Invoice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;




@Controller
public class InvoiceController {

    private final Map<Long, Invoice> invoiceMap = new HashMap<>();
    private long nextInvoiceId = 1L;


    @RequestMapping(value = "/homeInvoice", method = RequestMethod.GET)
    public  ModelAndView invoiceHome(){
        return new ModelAndView("invoiceHome");
    }

    @RequestMapping(value = "/invoice", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("invoiceForm", "invoice", new Invoice());
    }

    @RequestMapping(value = "/addInvoice", method = RequestMethod.POST)
    public String submit (@Valid @ModelAttribute("invoice") Invoice invoice, BindingResult result, Model model ){
        if (result.hasErrors()) {
            return "invoiceForm";
        }

        invoice.setId(nextInvoiceId);
        invoiceMap.put(nextInvoiceId, invoice);
        nextInvoiceId++;
        System.out.println("Empleados inicializados: " + invoiceMap.size());


        return "redirect:/invoice";

    }


    @RequestMapping(value = "/invoiceList", method = RequestMethod.GET)
    public String listInvoices(Model model) {
        model.addAttribute("invoices", invoiceMap.values());
        return "invoiceList";
    }


    @RequestMapping(value = "/invoiceDetail/{id}", method = RequestMethod.GET)
    public ModelAndView showInvoiceDetail(@PathVariable("id") Long id){
        Invoice chooseInvoice = invoiceMap.get(id);
        if (chooseInvoice == null) {
            return new ModelAndView("errorPage");
        }
        ModelAndView mv = new ModelAndView("invoiceDetail");
        mv.addObject("invoice", chooseInvoice);
        return mv;
    }





}
