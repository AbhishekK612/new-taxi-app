<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String username = (String) session.getAttribute("username");
if (username == null || username.isBlank()) {
    username = "Guest";
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Booking | Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <jsp:include page="/WEB-INF/jspf/common/navbar.jspf" />

    <div class="container py-5">
        <div class="row g-4">
            <div class="col-lg-3">
                <div class="sidebar-card p-3 h-100">
                    <div class="text-center mb-4">
                        <div class="rounded-circle bg-warning text-dark mx-auto d-flex align-items-center justify-content-center mb-2" style="width: 70px; height: 70px; font-size: 1.8rem;">
                            <i class="fa-solid fa-taxi"></i>
                        </div>
                        <h5 class="fw-bold mb-0">Taxi Booking</h5>
                    </div>
                    <div class="d-grid gap-2">
                        <a class="sidebar-link" href="${pageContext.request.contextPath}/new/dashboard.jsp"><i class="fa-solid fa-gauge-high"></i> Dashboard</a>
                        <a class="sidebar-link" href="${pageContext.request.contextPath}/new/book-ride.jsp"><i class="fa-solid fa-car"></i> Book Ride</a>
                        <a class="sidebar-link" href="${pageContext.request.contextPath}/new/my-bookings.jsp"><i class="fa-solid fa-list"></i> My Bookings</a>
                        <a class="sidebar-link" href="${pageContext.request.contextPath}/new/drivers.jsp"><i class="fa-solid fa-user-tie"></i> Drivers</a>
                        <a class="sidebar-link" href="${pageContext.request.contextPath}/new/profile.jsp"><i class="fa-solid fa-user"></i> Profile</a>
                        <a class="sidebar-link" href="${pageContext.request.contextPath}/new/contact.jsp"><i class="fa-solid fa-envelope"></i> Contact</a>
                        <a class="sidebar-link" href="${pageContext.request.contextPath}/login.jsp"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-9">
                <div class="row g-4 mb-4">
                    <div class="col-md-6 col-xl-3">
                        <div class="card booking-card p-4 h-100 fade-in">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="text-muted">Today's Bookings</div>
                                    <div class="stat-number">18</div>
                                </div>
                                <i class="fa-solid fa-calendar-check card-icon"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3">
                        <div class="card booking-card p-4 h-100 fade-in">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="text-muted">Available Drivers</div>
                                    <div class="stat-number">32</div>
                                </div>
                                <i class="fa-solid fa-user-tie card-icon"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3">
                        <div class="card booking-card p-4 h-100 fade-in">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="text-muted">Completed Trips</div>
                                    <div class="stat-number">124</div>
                                </div>
                                <i class="fa-solid fa-check-circle card-icon"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3">
                        <div class="card booking-card p-4 h-100 fade-in">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="text-muted">Revenue</div>
                                    <div class="stat-number">$8.4K</div>
                                </div>
                                <i class="fa-solid fa-wallet card-icon"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row g-4 mb-4">
                    <div class="col-lg-7">
                        <div class="card booking-card p-4 h-100">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <div>
                                    <h4 class="fw-bold mb-1">Welcome, <%= username %>!</h4>
                                    <p class="text-muted mb-0">Premium dashboard with ride insights and dispatch controls.</p>
                                </div>
                                <span class="badge bg-warning text-dark">Live</span>
                            </div>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="booking-widget p-3 h-100">
                                        <div class="fw-semibold mb-2">Ride Tracking</div>
                                        <div class="text-muted small">Driver: John Carter</div>
                                        <div class="text-muted small">ETA: 4 mins</div>
                                        <div class="mt-3">
                                            <div class="chart-bar"><div class="chart-fill" style="width: 68%"></div></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="booking-widget p-3 h-100">
                                        <div class="fw-semibold mb-2">Quick Actions</div>
                                        <div class="d-grid gap-2">
                                            <a href="${pageContext.request.contextPath}/new/book-ride.jsp" class="btn btn-primary-custom">Book Ride</a>
                                            <a href="${pageContext.request.contextPath}/new/my-bookings.jsp" class="btn btn-outline-custom">Ride History</a>
                                            <a href="${pageContext.request.contextPath}/new/profile.jsp" class="btn btn-outline-custom">My Profile</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-5">
                        <div class="card notification-card p-4 h-100">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h5 class="fw-bold mb-0">Notifications</h5>
                                <span class="badge bg-warning text-dark">3 New</span>
                            </div>
                            <div class="d-flex align-items-start gap-3 mb-3">
                                <div class="notification-icon"><i class="fa-solid fa-bell"></i></div>
                                <div>
                                    <div class="fw-semibold">Driver assigned</div>
                                    <div class="small text-muted">Your ride has been matched with John.</div>
                                </div>
                            </div>
                            <div class="d-flex align-items-start gap-3 mb-3">
                                <div class="notification-icon"><i class="fa-solid fa-circle-info"></i></div>
                                <div>
                                    <div class="fw-semibold">Arrival update</div>
                                    <div class="small text-muted">Your driver is approaching the pickup point.</div>
                                </div>
                            </div>
                            <div class="d-flex align-items-start gap-3">
                                <div class="notification-icon"><i class="fa-solid fa-wallet"></i></div>
                                <div>
                                    <div class="fw-semibold">Fare confirmation</div>
                                    <div class="small text-muted">Estimated fare has been finalized for your route.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row g-4">
                    <div class="col-lg-7">
                        <div class="card booking-card p-4 h-100">
                            <h5 class="fw-bold mb-3">Booking timeline</h5>
                            <div class="timeline">
                                <div class="timeline-item mb-3">
                                    <div class="fw-semibold">Ride requested</div>
                                    <div class="small text-muted">Pickup location confirmed.</div>
                                </div>
                                <div class="timeline-item mb-3">
                                    <div class="fw-semibold">Driver accepted</div>
                                    <div class="small text-muted">John Carter is on the way.</div>
                                </div>
                                <div class="timeline-item">
                                    <div class="fw-semibold">Trip in progress</div>
                                    <div class="small text-muted">Vehicle is moving toward destination.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="card booking-card p-4 h-100">
                            <h5 class="fw-bold mb-3">Weekly activity</h5>
                            <div class="mb-3">
                                <div class="d-flex justify-content-between small text-muted"><span>Bookings</span><span>78%</span></div>
                                <div class="chart-bar mt-1"><div class="chart-fill" style="width:78%"></div></div>
                            </div>
                            <div class="mb-3">
                                <div class="d-flex justify-content-between small text-muted"><span>Driver availability</span><span>85%</span></div>
                                <div class="chart-bar mt-1"><div class="chart-fill" style="width:85%"></div></div>
                            </div>
                            <div>
                                <div class="d-flex justify-content-between small text-muted"><span>Trip completion</span><span>91%</span></div>
                                <div class="chart-bar mt-1"><div class="chart-fill" style="width:91%"></div></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/jspf/common/footer.jspf" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
