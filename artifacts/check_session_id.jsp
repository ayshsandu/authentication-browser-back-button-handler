<%@ page import="com.custom.login.endpoint.CustomLoginEndpointUtil" %>
<%
    String sessionDataKey = request.getParameter("sessionDataKey");
    String relyingParty = request.getParameter("relyingParty");
    String tenantDomain = request.getParameter("tenantDomain");
    String authenticators = request.getParameter("authenticators");
    response.getWriter().write(CustomLoginEndpointUtil.getSessionDataKeyStatus(relyingParty, sessionDataKey,
            tenantDomain, authenticators).toString());
%>

