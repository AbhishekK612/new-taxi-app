<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.sendRedirect(request.getContextPath() + "/new/contact.jsp");
    return;
%>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <jsp:include page="/WEB-INF/jspf/common/navbar.jspf" />

    <div class="container py-5">
        <div class="row g-4">
            <div class="col-lg-6">
                <div class="card contact-card p-4 h-100">
                    <h2 class="fw-bold mb-3">Contact Us</h2>
                    <p><i class="fa-solid fa-location-dot"></i> 123 Main Street, Downtown</p>
                    <p><i class="fa-solid fa-phone"></i> +91 98765 43210</p>
                    <p><i class="fa-solid fa-envelope"></i> support@taxibooking.com</p>
                    <div class="ratio ratio-16x9">
                        <iframe class="rounded-4" src="https://www.google.com/maps?q=Delhi&z=12&output=embed"></iframe>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card contact-card p-4 h-100">
                    <h2 class="fw-bold mb-3">Send a Message</h2>
                    <form>
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Message</label>
                            <textarea class="form-control" rows="5"></textarea>
                        </div>
                        <button type="button" class="btn btn-primary-custom">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/jspf/common/footer.jspf" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
