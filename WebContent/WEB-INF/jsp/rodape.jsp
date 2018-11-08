<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<hr/>
<jsp:useBean class="java.util.Date" id="dataHoraAtual"></jsp:useBean>
<fmt:formatDate pattern="yyyy" value="${dataHoraAtual }" var="anoFormatado"/>
Copyright ${anoFormatado} - Todos os direitos reservados