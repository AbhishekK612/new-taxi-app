<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Booking | Book Ride</title>
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
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card booking-card p-4 p-md-5">
                    <h2 class="fw-bold mb-4">Book Your Ride</h2>
                    <form>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label class="form-label">Pickup Location</label>
                                <input type="text" class="form-control" placeholder="Enter pickup location">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Destination</label>
                                <input type="text" class="form-control" placeholder="Enter destination">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Cab Type</label>
                                <select class="form-select">
                                    <option>Standard</option>
                                    <option>Premium</option>
                                    <option>SUV</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Travel Date</label>
                                <input type="date" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Travel Time</label>
                                <input type="time" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <div class="alert alert-warning mt-4 mb-0">
                                    Estimated Fare: $18.00
                                </div>
                            </div>
                        </div>
                        <div class="mt-4">
                            <button type="button" class="btn btn-primary-custom">Book Ride</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/jspf/common/footer.jspf" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
