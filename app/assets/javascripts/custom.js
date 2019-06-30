$(document).ready(function () {

  $.validator.addMethod("alphabets_only", function(value, element){
    if (/^[a-zA-Z ]*$/.test(value)) {
        return true;
    } else {
        return false;
    };
  });
  $.validator.addMethod("digits_only", function(value, element){
    if (/[0-9 ]+/.test(value)) {
        return true;
    } else {
        return false;
    };
  });


            // $('form').each(function () {
                $('#new_candidate').validate({
                  rules:{
                    'candidate[name]': {
                       required: true,
                       alphabets_only: true,
                    },
                    'candidate[date]':{
                      required: true,
                    },
                    'candidate[installment_payment]':{
                      required: true,
                      digits_only: true,
                    },
                    'candidate[due_date]':{
                      required: true,
                    },
                    'candidate[unit_no]':{
                      required: true,
                      digits_only: true,
                    },
                    'candidate[payment_plan]':{
                      required: true,
                    },
                    'candidate[work_stage]':{
                      required: true,
                    },
                    'candidate[installment_no]':{
                      required: true,
                      digits_only: true,
                    },
                    'candidate[bank_details]':{
                      required: true,
                    },
                    'candidate[account_no]':{
                      required: true,
                      digits_only: true,
                    },
                    'candidate[ifsc_code]':{
                      required: true,
                    },
                    'candidate[cheque]':{
                      required: true,
                    },
                    'candidate[authorized_sign]':{
                      required: true,
                    },
                    'candidate[due_amount]':{
                      required: true,
                      digits_only: true,
                    },
                    'candidate[interest_on_delayed_payment]':{
                      required: true,
                      digits_only: true,
                    },
                  },
                  messages: {
                    'candidate[name]': {
                      required :"please specify your name.",
                      alphabets_only:"name can contain alphabets only.",
                     },
                    'candidate[date]':"please Enter date.",
                    'candidate[installment_payment]':{
                      required:"please enter installent payment.",
                      digits_only:"Installment payment can contain digits only.",
                    },
                    'candidate[due_date]':"Please Enter Due date.",
                    'candidate[unit_no]':{
                      required: "Please enter unit number.",
                      digits_only: "Unit Number can contain digits only.",
                    },
                    'candidate[payment_plan]':"Please enter payment plan.",
                    'candidate[work_stage]':"Please enter work stage.",
                    'candidate[installment_no]':{
                      required:"Please enter installment number.",
                      digits_only: "Installment number can contain digits only.",
                    },
                    'candidate[bank_details]':"Please enter bank details.",
                    'candidate[account_no]':{
                      required: "Please enter Account Number.",
                      digits_only: "Account Number can contain digits only.",
                    },
                    'candidate[ifsc_code]':"Please Enter IFSC code.",
                    'candidate[cheque]':"Please enter check Number.",
                    'candidate[authorized_sign]':"Please enter authorized signature.",
                    'candidate[due_amount]':{
                      required:"please enter Due Amount.",
                      digits_only:"Due Amount can contain digits only.",
                    },
                    'candidate[interest_on_delayed_payment]':{
                      required: "Please enter interest on delayed payment.",
                      digits_only: "Interest on delayed payment can contain digits only.",
                    },
                  }


                // });
            });

        });
