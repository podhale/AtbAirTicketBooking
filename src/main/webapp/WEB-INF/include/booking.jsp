
<jsp:useBean id="now" class="java.util.GregorianCalendar"/>


						<div class="row-fluid">
	<p>
		<div class="controls">
             <span class="label label-info">Wylot</span><a href="#" rel="tooltip" title="Wybierz lotnisko wylotu">  *</a><br />

             <select name="wyloty" id="search.wyloty" style="width: 160px;">

				 <c:forEach var="index" items="${index}">
						 <option value="${index.code}">${index.name} (${index.code})</option>
				 </c:forEach>
			 </select>
           </div>

	</p>

	<p>
		<div class="controls">
             <span class="label label-info">Przylot</span><a href="#" rel="tooltip" title="Wybierz lotnisko przylotu">  *</a> <br />
			 <select name="przylot" id="przylot" style="width: 160px;">
				 <c:forEach var="index" items="${index}">
					 <option value="${index.code}">${index.name} (${index.code})</option>
				 </c:forEach>
             </select>
           </div>

	</p>

	<p>
		<span class="label label-info">Data wylotu</span><a href="#" rel="tooltip" title="Wybierz date wylotu">  *</a><br>
		<c:if test="${form.startDate == null || form.startDate == '' || form.startDate == ' '}">
			<input value="<fmt:formatDate value="${now.time}" type="both" pattern="MM-dd-yyyy" />" name="wylot" id="wylot"
					type="text" size="30" style="width: 160px;" type="text"/>
		</c:if>
		<c:if test="${form.startDate != null}">
			<input value="${form.startDate}" name="wylot" id="wylot"
					type="text" size="30" style="width: 160px;" type="text"/>
		</c:if>

	</p>

	<p>
		<span class="label label-info">Data powrotu</span><a href="#" rel="tooltip" title="Wybierz date przylotu">  *</a><br>
		<% now.add(java.util.GregorianCalendar.DAY_OF_MONTH, 8); %>
		<c:if test="${form.returnDate == null || form.returnDate == '' || form.returnDate == ' '}">
			<input value="<fmt:formatDate value="${now.time}" type="both" pattern="MM-dd-yyyy" />" name="powrot" id="powrot"
					type="text" size="30" style="width: 160px;" type="text"/>
		</c:if>
		<c:if test="${form.returnDate != null}">
			<input value="${form.returnDate}" name="powrot" id="powrot"
					type="text" size="30" style="width: 160px;" type="text"/>
		</c:if>

	</p>

	<p>
		<span class="label label-info">Liczba pasazerow</span><a href="#" rel="tooltip" title="Wybierz liczbe pasazerow">  *</a><br>
			<input name="liczbaPasazerow" id="liczbaPasazerow"
				type="number"  min="1" max="10" size="30" style="width: 160px;"
				step="1" value="1"/>

		</p>
		<button type="submit"
			class="btn btn-primary">
			<i class="icon-search"></i>Szukaj
		</button>
	</div>