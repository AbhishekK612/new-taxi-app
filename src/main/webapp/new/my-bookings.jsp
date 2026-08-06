<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Booking | My Bookings</title>
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
        <h2 class="fw-bold mb-4">My Bookings</h2>
        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>Booking ID</th>
                        <th>Pickup</th>
                        <th>Destination</th>
                        <th>Driver</th>
                        <th>Status</th>
                        <th>Fare</th>
                        <th>Booking Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#TB101</td>
                        <td>Central Station</td>
                        <td>City Mall</td>
                        <td>John</td>
                        <td><span class="badge bg-success">Confirmed</span></td>
                        <td>$18</td>
                        <td>2026-07-19</td>
                        <td>
                            <button class="btn btn-sm btn-outline-custom">View</button>
                            <button class="btn btn-sm btn-outline-danger">Cancel</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <jsp:include page="/WEB-INF/jspf/common/footer.jspf" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
