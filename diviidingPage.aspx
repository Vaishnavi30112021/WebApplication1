﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="diviidingPage.aspx.cs" Inherits="WebApplication1.diviidingPage" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <h1>Three equal width columns</h1>
            <p>Note: Try to add a new div with class="col" inside the row class - this will create four equal-width columns.</p>
            <div class="row">
                <div class="col" style="background-color: lavender;">.col</div>
                <div class="col" style="background-color: orange;">.col</div>
            </div>
        </div>
    </form>
</body>
</html>
