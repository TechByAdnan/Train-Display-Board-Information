<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Train Display</title>
    <!-- Auto-refresh every 10 seconds -->
    <meta http-equiv="refresh" content="10">

    <style>
        body {
            background-color: #000;
            font-family: 'Courier New', monospace;
            margin: 0;
            padding: 20px;
            color: #FF3B3F;
        }

        h1 {
            text-align: center;
            font-size: 36px;
            color: #FF3B3F;
            text-shadow: 0 0 6px #FF3B3F, 0 0 12px #FF3B3F;
            margin-bottom: 25px;
            border: 3px solid #FF3B3F;
            padding: 10px;
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            background-color: #111;
            box-shadow: 0 0 10px #FF3B3F;
        }

        .frame {
            width: 90%;
            margin: auto;
            border: 4px double #FF3B3F;
            padding: 25px;
            background-color: #111;
            box-shadow: 0 0 15px #FF3B3F;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 20px;
            color: #FF3B3F;
        }

        thead {
            background-color: #1a1a1a;
            font-size: 22px;
            text-transform: uppercase;
        }

        th, td {
            padding: 12px 14px;
            text-align: center;
            border-bottom: 1px dashed #FF3B3F;
        }

        th {
            color: #FF3B3F;
            text-shadow: 0 0 5px #FF3B3F;
        }

        .led-style {
            color: #FF3B3F;
            text-shadow: 0 0 4px #FF3B3F, 0 0 8px #FF3B3F;
            font-weight: bold;
        }

        /* Train rows hidden initially */
        .train-row {
            opacity: 0;
            transform: translateY(10px);
        }

        /* Fade-in animation class applied via JavaScript */
        .show-row {
            animation: fadeIn 1s ease-in-out forwards;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

<h1>TRAIN PROGRESS AND ENQUIRY SYSTEM</h1>

<div class="frame">
    <table>
        <thead>
        <tr>
            <th>Train No</th>
            <th>Train Name</th>
            <th>Departure</th>
            <th>Arrival</th>
            <th>Platform</th>
            <th>Type</th>
        </tr>
        </thead>
        <tbody id="trainBody">
        <tr class="train-row">
            <td class="led-style">${train1.trainNo}</td>
            <td class="led-style">${train1.trainName}</td>
            <td class="led-style">${train1.departureTime}</td>
            <td class="led-style">${train1.arrivalTime}</td>
            <td class="led-style">${train1.platformNo}</td>
            <td class="led-style">${train1.trainType}</td>
        </tr>
        <tr class="train-row">
            <td class="led-style">${train2.trainNo}</td>
            <td class="led-style">${train2.trainName}</td>
            <td class="led-style">${train2.departureTime}</td>
            <td class="led-style">${train2.arrivalTime}</td>
            <td class="led-style">${train2.platformNo}</td>
            <td class="led-style">${train2.trainType}</td>
        </tr>
        <tr class="train-row">
            <td class="led-style">${train3.trainNo}</td>
            <td class="led-style">${train3.trainName}</td>
            <td class="led-style">${train3.departureTime}</td>
            <td class="led-style">${train3.arrivalTime}</td>
            <td class="led-style">${train3.platformNo}</td>
            <td class="led-style">${train3.trainType}</td>
        </tr>
        <tr class="train-row">
            <td class="led-style">${train4.trainNo}</td>
            <td class="led-style">${train4.trainName}</td>
            <td class="led-style">${train4.departureTime}</td>
            <td class="led-style">${train4.arrivalTime}</td>
            <td class="led-style">${train4.platformNo}</td>
            <td class="led-style">${train4.trainType}</td>
        </tr>
        <tr class="train-row">
            <td class="led-style">${train5.trainNo}</td>
            <td class="led-style">${train5.trainName}</td>
            <td class="led-style">${train5.departureTime}</td>
            <td class="led-style">${train5.arrivalTime}</td>
            <td class="led-style">${train5.platformNo}</td>
            <td class="led-style">${train5.trainType}</td>
        </tr>
        <tr class="train-row">
            <td class="led-style">${train6.trainNo}</td>
            <td class="led-style">${train6.trainName}</td>
            <td class="led-style">${train6.departureTime}</td>
            <td class="led-style">${train6.arrivalTime}</td>
            <td class="led-style">${train6.platformNo}</td>
            <td class="led-style">${train6.trainType}</td>
        </tr>
        <tr class="train-row">
            <td class="led-style">${train7.trainNo}</td>
            <td class="led-style">${train7.trainName}</td>
            <td class="led-style">${train7.departureTime}</td>
            <td class="led-style">${train7.arrivalTime}</td>
            <td class="led-style">${train7.platformNo}</td>
            <td class="led-style">${train7.trainType}</td>
        </tr>
        <tr class="train-row">
            <td class="led-style">${train8.trainNo}</td>
            <td class="led-style">${train8.trainName}</td>
            <td class="led-style">${train8.departureTime}</td>
            <td class="led-style">${train8.arrivalTime}</td>
            <td class="led-style">${train8.platformNo}</td>
            <td class="led-style">${train8.trainType}</td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    const rows = document.querySelectorAll('.train-row');
    let index = 0;

    function revealRow() {
        if (index < rows.length) {
            rows[index].classList.add('show-row');
            index++;
            setTimeout(revealRow, 800); // Show one row at a time every 800ms
        }
    }

    window.onload = revealRow;
</script>

</body>
</html>
