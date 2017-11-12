<html>
<%@ page import="com.mongodb.*" %>
<%@ page import="com.mongodb.client.*" %>
<%@page import="org.bson.Document" %>
<%@page import="org.bson.types.ObjectId" %>
<%@page import="java.util.Iterator" %>
<body>

<%
MongoClientURI uri  = new MongoClientURI("mongodb://sa:sa@ds063546.mlab.com:63546/binoy"); 
@SuppressWarnings("resource")
MongoClient mongoClient = new MongoClient(uri);
MongoDatabase database = mongoClient.getDatabase("binoy");
MongoCollection<Document> collection = database.getCollection("pages");
BasicDBObject query = new BasicDBObject();
query.put("name", "index");
FindIterable<Document> cursor3 = collection.find();
Iterator itr3 = cursor3.iterator();
Document myDoc = null;
while (itr3.hasNext()) {
	myDoc = (Document) itr3.next();
}
String ageData = (String)myDoc.get("data");


%>

<h2><%=ageData %></h2>
</body>
</html>
