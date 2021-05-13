<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>Insert title here</title>
            <!-- <link rel="stylesheet" type="text/css" href="/cusstyle.css"> -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
                crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" type="text/css" href="customer.css">

            <script type="text/javascript">
                function dynamicdropdown(listindex) {
                    switch (listindex) {
                        case "AP":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Southern Power Distribution company", "SPDCL");
                            document.getElementById("board").options[2] = new Option("Eastern Power Distribution company", "EPDCL");
                            break;
                        case "Assam":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Assam Power Distribition Company", "APDCL");
                            break;
                        case "Bihar":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("South Bihar Power Distribution", "SBPD");
                            document.getElementById("board").options[2] = new Option("North Bihar Power Distribution", "NBPD");
                            break;
                        case "chattisgarh":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Chattisgarh Power Distribution company", "CPDCL");
                            break;
                        case "goa":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Goa Electricity Department", "GEDept");
                            break;
                        case "gujarat":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Dakshin Gujarat Vij Company", "DGVC");
                            document.getElementById("board").options[2] = new Option("Madhya Gujarat Vij Company", "MGVC");
                            document.getElementById("board").options[3] = new Option("Paschim Gujarat Vij Company", "PGVC");
                            document.getElementById("board").options[4] = new Option("Torrent power", "TPLtd");
                            document.getElementById("board").options[5] = new Option("Uttar Gujarat Vij Company", "EPDCL");
                            break;
                        case "Haryana":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Dakshin Haryana Bijli Vitran Nigam", "DHBVN");
                            document.getElementById("board").options[2] = new Option("Uttar Haryana Bijli Vitran Nigam", "UHBVN");
                            break;
                        case "Himachalpradesh":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("HimachalPradesh State Electricity Board", "HPSEB");
                            break;
                        case "jharkand":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Jamshedpur Utilities & Services", "JUSCO");
                            document.getElementById("board").options[2] = new Option("Jharkand Bijli Vitran Nigam", "JBVNL");
                            break;
                        case "karnataka":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Bangalore Electricity Supply Company", "BESCOM");
                            document.getElementById("board").options[2] = new Option("Chamundeswari Electricity Supply Corporation", "Cesc Mysore");
                            document.getElementById("board").options[3] = new Option("Gulbarga Electricity Supply Company", "GESCOM");
                            document.getElementById("board").options[4] = new Option("Hubli Electricity Supply Company", "HESCOM");
                            document.getElementById("board").options[5] = new Option("Mangalore Electricity Supply Company", "MESCOM");
                            break;
                        case "kerala":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Kerala State Electricity Board", "KSEB");
                            break;
                        case "Madhyapradesh":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("MP Madhya Kshetra Vidyut Vitran", "Bhopal");
                            document.getElementById("board").options[2] = new Option("MP Poorva Kshetra Vidyut Vitran", "Jabalpur");
                            document.getElementById("board").options[3] = new Option("MP Paschim Kshetra Vidyut Vitran", "MPPKVVCL");
                            break;
                        case "Maharasthra":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Adani Electricity", "AE");
                            document.getElementById("board").options[2] = new Option("BEST", "BEST");
                            document.getElementById("board").options[3] = new Option("MahaVitran-Electricity Distribution company", "MSEDCL");
                            document.getElementById("board").options[4] = new Option("Torrent power", "TPLtd");
                            document.getElementById("board").options[5] = new Option("Tata power-Mumbai", "Tata");
                            break;
                        case "newdelhi":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("BSES Rajdhani-Delhi", "BSES");
                            document.getElementById("board").options[2] = new Option("BSES Yamuna-Delhi", "BSESY");
                            document.getElementById("board").options[3] = new Option("New Delhi Muncipal Council", "NDMC");
                            document.getElementById("board").options[4] = new Option("Tata power-DDL", "TataDDL");
                            break;
                        case "odisha":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("CESU", "CESU");
                            document.getElementById("board").options[2] = new Option("NESCO UTILITY", "NESCO");
                            document.getElementById("board").options[3] = new Option("SOUTHCO UTILITY", "SOUTHCO");
                            document.getElementById("board").options[4] = new Option("WESCO UTILITY", "WESCO");
                            break;
                        case "punjab":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Punjab State Power Corporation", "PSP");
                            break;
                        case "Rajasthan":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Ajmer Vidyut Vitran Nigam", "AVVNL");
                            document.getElementById("board").options[2] = new Option("Bharatpur Electricity Services", "BESL");
                            document.getElementById("board").options[3] = new Option("Bikaner Electricity Supply Limited", "CESC");
                            document.getElementById("board").options[4] = new Option("TP Ajmer Distribution Ltd", "TPADL");
                            document.getElementById("board").options[5] = new Option("Jaipur Vidyut Vitran Nigam", "JVVNL");
                            document.getElementById("board").options[6] = new Option("Jodhpur Vidyut Vitran Nigam", "JDVVNL");
                            break;
                        case "tamilnadu":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Tamilnadu Electricity Board", "TNEB1");
                            break;
                        case "telangana":
                            document.getElementById("board").options[0] = new Option("Select Board", "");
                            document.getElementById("board").options[1] = new Option("Telangana State Southern Power Distribution company ", "TSSPDCL");
                            document.getElementById("board").options[2] = new Option("Tsspdcl-Prepaid Meter Recharge ", "TSSPDCLPM");
                            document.getElementById("board").options[3] = new Option("Northern Power Distribution company", "TSNPDCL");
                            break;

                    }
                    return true;
                }
            </script>

        </head>

        <body>
            <main class="sign-up">

                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <a class="navbar-brand" href="/customerportal.jsp">BILL PAYMENT</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto ml-5 pl-5">
                            <li class="nav-item"><a class="nav-link" href="cusvendors" style="color: white">Vendors
                                    <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="billpayhome" style="color: white">Bill
                                    Payment</a></li>

                            <li class="nav-item"><a class="nav-link" href="recordbill" style="color: white">Bill
                                    Records</a></li>

                            <li class="nav-item"><a class="nav-link" href="/feedback1" style="color: white">FeedBack</a>
                            </li>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="/beforehelp" style="color: white">Help</a>
                            </li>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="/" style="color: white">Logout</a></li>
                        </ul>
                     

                    </div>
                </nav>
                <div class="header1">
                  
                    ${message }
                </div>

                <div class="sign-up__content">
                    <header class="sign-up__header">
                      <h1 class="sign-up__title">
                        Electricity Bill Payment
                      </h1>
                      <p class="sign-up__descr">
                       Please enter the information to proceed further
                      </p>
                    </header>
                    <form:form action="ebillsave" method="post" modelAttribute="electricity" class="sign-up__form form">
                      <div class="form__row form__row--two">
                        <div class="input form__inline-input">
                          <div class="input__container">
                            <form:input path="billnumber" class="input__field" type="text" placeholder="Bill Number" /><label
                              class="input__label" for="billnumber">Bill Number</label>
                            <br>
                            <form:errors path="billnumber" cssClass="errors" style="color: red;"></form:errors>
                          </div>
                        </div>
                        <div class="input form__inline-input">
                          <div class="input__container">
                            <form:input path="servicenumber" class="input__field" type="text" placeholder="Service Number" /><label
                              class="input__label" for="servicenumber">Service Number</label>
                            <br>
                            <form:errors path="servicenumber" cssClass="errors" style="color: red;"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="form__row">
                        <div class="input">
                          <div class="input__container">
                            <form:input path="amount" class="input__field" type="text" placeholder="Amount" /><label
                              class="input__label" for="amount">Amount</label>
                            <br>
                            <form:errors path="amount" cssClass="errors" style="color: red;"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="form__row">
                        <div class="input">
                          <div class="input__container">
                            <form:input path="billpaydate" class="input__field" type="date" placeholder="Bill Date" /><label
                              class="input__label" for="contact">Bill Date</label>
                            <br>
                            <form:errors path="billpaydate" cssClass="errors" style="color: red;"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="form__row">
                        <div class="input">
                          <div class="input__container">
                            <div class="category_div" id="category_div">
                                <select style="width: 400px;height: 30px; border: 0px solid #e5e5e6; background-color: #fcfcfd; display: inline-flex;" id="state" name="state" class="input__field"
                                    onchange="javascript: dynamicdropdown(this.options[this.selectedIndex].value);">
                                    <option value="" disabled selected>State</option>
                                    <option value="AP">AndhraPradesh</option>

                                    <option value="Assam">Assam</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="chattisgarh">Chattisgarh</option>
                                    <option value="goa">Goa</option>
                                    <option value="gujarat">Gujarat</option>
                                    <option value="Haryana">Haryana</option>
                                    <option value="Himachalpradesh">HimachalPradesh</option>
                                    <option value="jharkand">Jharkand</option>
                                    <option value="karnataka">Karnataka</option>
                                    <option value="kerala">Kerala</option>
                                    <option value="Madhyapradesh">MadhyaPradesh</option>
                                    <option value="Maharasthra">Maharasthra</option>
                                    <option value="newdelhi">New Delhi</option>
                                    <option value="odisha">Odisha</option>
                                    <option value="punjab">Punjab</option>
                                    <option value="Rajasthan">Rajasthan</option>
                                    <option value="tamilnadu">TamilNadu</option>
                                    <option value="telangana">Telangana</option>


                                </select>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="form__row">
                        <div class="input">
                          <div class="input__container">
                            <div class="sub_category_div" id="sub_category_div">
                                <script type="text/javascript">
                                    document.write('<select name="board" id="board" style="width: 400px; height: 30px;border: 0px solid #e5e5e6; background-color: #fcfcfd; display: inline-flex;"><option value="" disabled selected>Select board</option></select>')
                                </script>
                                <noscript>
                                    <select id="board" name="board" style="width: 200px;height: 30px;">

                                    </select>
                                </noscript>
                            </div>
                          </div>
                        </div>
                      </div>
                     
                     
                    
                      
                      <input type="submit" value="Continue" class="btn btn-dark"/>
                    
                    </form:form>
                  </div>

            </main>




        </body>

        </html>