<%@ page import="com.podhale.test.App" %>
<%@ page import="com.podhale.forms.Form" %>
<%@ page import="com.podhale.domain.Miejsce" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>

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
<script type="text/javascript">
	//
	$(function() {
		!(!window.prettyPrint || !prettyPrint());
		$('#startDate').datepicker({
			format : 'mm-dd-yyyy'
		});
		$('#endDate').datepicker({
			format : 'mm-dd-yyyy'
		});

	});
	//
	jQuery().ready(function($) {
        $('#numberOfPassengers').spinner();

	});

</script>
<script type="text/javascript">
	//
	_uacct = "UA-106117-1";
	urchinTracker();
	//
</script>
</head>

<body>
<form:form action="${pageContext.request.contextPath}/result" method="get">
<%@ include file="../include/header.jsp" %>

<br/>
<br/>
<br/>
<br/>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">Rezerwuj bilet</li>
							<%@ include file="../include/booking.jsp" %>
					</ul>
				</div>
				<!--/.well -->
			</div>
			<!--/span-->
			<div class="span9">
			</div>
		</div>
		<!--/row-->
		<hr>

	</div>
</form:form>

</body>
</html>
