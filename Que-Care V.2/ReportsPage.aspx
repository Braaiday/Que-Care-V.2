<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReportsPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card text-white bg-primary mb-3" style="max-width: 60rem; min-height: 30em; margin: 20px;">
                            <div class="card-header">Reports</div>
                             <div class="card-body">
                                 <h4 class="card-title">Here are some statistics</h4>
                                 <table>
                                     <tr>
                                         <th>
                                             <div style="max-height: 10rem; max-height: 10rem; text-align:center">
                                                 <h3>User Split</h3>
                                                <canvas id="myChart1"></canvas>
                                            </div>
                                         </th>
                                         <th>
                                             <div style="max-height: 10rem; max-height: 10rem; text-align:center">
                                                 <h3>Tickets VS Patients</h3>
                                                <canvas id="myChart2" ></canvas>
                                            </div>
                                         </th>
                                         <th>

                                         </th>
                                     </tr>
                                 </table>
                             </div>
                        </div>
     <!--Chart.js -->
                        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                        <!--config/setup -->
                        <script>

                            const ctx1 = document.getElementById('myChart1').getContext('2d');
                            const myChart1 = new Chart(ctx1, {
                                type: 'pie',
                                data: {
                                    labels: ['Doctors', 'Patients', 'Receptionists'],
                                    datasets: [{
                                        label: '# of Votes',
                                        data: ['<%=DocCount%>', '<%=PatCount%>', '<%=RecepCount%>'],
                                        backgroundColor: [
                                            '#f2672e',
                                            '#034efc',
                                            '#f2bf26'
                                        ],
                                        borderWidth: 0
                                    }]
                                },
                                options: {
                                    plugins: {
                                        legend: {
                                            labels: {
                                                color: "white",
                                                font: {
                                                    size: 18
                                                }
                                            }
                                        }
                                    }
                                }
                            });

                            const ctx2 = document.getElementById('myChart2').getContext('2d');
                            const myChart2 = new Chart(ctx2, {
                                type: 'pie',
                                data: {
                                    labels: ['Tickets', 'Patients'],
                                    datasets: [{
                                        label: '# of Votes',
                                        data: ['<%=NumTickets%>', '<%=PatCount%>'],
                                        backgroundColor: [
                                            '#03fc56',
                                            '#034efc'
                                        ],
                                        borderWidth: 0
                                    }]
                                },
                                options: {
                                    plugins: {
                                        legend: {
                                            labels: {
                                                color: "white",
                                                font: {
                                                    size: 18
                                                }
                                            }
                                        }
                                    }
                                }
                            });
                        </script>
</asp:Content>

