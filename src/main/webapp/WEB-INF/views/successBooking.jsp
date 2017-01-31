<jsp:useBean id="rezerwacja" class="com.podhale.domain.Rezerwacja" scope="session"/>
<jsp:useBean id="m" class="com.podhale.domain.Miejsce" scope="session"/>
<jsp:setProperty name="rezerwacja" property="*"/>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//PL"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />

    <title>ATB</title>
    <link rel='stylesheet' id='suffusion-google-fonts-css'  href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic' type='text/css' media='all' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}resources/css/font-awesome.css"  type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/datepicker.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/prettify.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/resources/js/prettify.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js" type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/themeswitchertool.js" type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-typeahead.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/urchin.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-tooltip.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-modal.js" type="text/javascript"></script>

</head>

<body>

    <%@ include file="../include/header.jsp" %>

    <br/>
    <br/>
    <br/>
    <br/>
   <div >
       <table class="table table-striped">
           <thead>
               <tr>
                   <td>
                       Imie
                   </td>
                   <td>
                       Nazwisko
                   </td>
                   <td>
                       Pesel
                   </td>
                   <td>
                       Numer karty
                   </td>
                   <td>
                       Data wylotu
                   </td>
                   <td>
                       Wylot(h)
                   </td>
                   <td>
                       Miejsce
                   </td>
                   <td>
                       Przylot(h)
                   </td>
                   <td>
                       Miejsce
                   </td>
                   <td>
                       Linia
                   </td>
                   <td>
                       Cena
                   </td>
               </tr>
           </thead>
           <tbody>
               <tr>
                   <td>
                       ${rezerwacja.imie}
                   </td>
                   <td>
                       ${rezerwacja.nazwisko}
                   </td>
                   <td>
                       ${rezerwacja.pesel}
                   </td>
                   <td>
                       ${rezerwacja.karta}
                   </td>
                   <td>
                       ${rezerwacja.wylot}
                   </td>
                    <c:forEach var="lot" items="${lot}">
                   <td>
                       ${lot.startTime}
                   </td>
                   <td>
                       ${lot.startAirport}
                   </td>
                   <td>
                       ${lot.endAirport}
                   </td>
                   <td>
                       ${lot.endTime}
                   </td>
                   <td>
                       ${lot.airline}
                   </td>
                   <td>
                       ${lot.price}
                   </td>
                    </c:forEach>
               </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>

                    <td>
                        <form:form action="${pageContext.request.contextPath}/confirmation" method="get">
                            <input type="hidden" name="imie" id="imie" value="${rezerwacja.imie}">
                            <input type="hidden" name="nazwisko" id="nazwisko" value="${rezerwacja.nazwisko}">
                            <input type="hidden" name="pesel" id="pesel" value="${rezerwacja.pesel}">
                            <input type="hidden" name="karta" id="karta" value="${rezerwacja.karta}">
                            <input type="hidden" name="id_lotu" id="id_lotu"  value="${rezerwacja.id_lotu}">
                            <input type="hidden" name="wylot" id="wylot"  value="${rezerwacja.wylot}">
                            <input type="hidden" name="przylot" id="przylot"  value="${rezerwacja.przylot}">
                            <input type="hidden" name="pasazerowie" id="pasazerowie" value="${rezerwacja.pasazerowie}">


                            <button type="submit"
                                    class="btn btn-primary">
                                Potwierdz rezerwacje
                            </button>
                        </form:form>
                    </td>
                </tr>
           </tbody>
       </table>
   </div>

</body>
</html>
