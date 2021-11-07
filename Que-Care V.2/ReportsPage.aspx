<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReportsPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                        <center>
                        <div class="card text-white bg-secondary mb-3" style="max-width: 90rem; min-height: 45em; margin: 20px;">
                            <div class="card-header">Reports</div>
                             <div class="card-body">
                                 <h4 class="card-title">Here are some statistics</h4>
                                 <br />
                                 <br />
                                 <br />
                                 <table>
                                     <tr>
                                         <th>
                                             <div class="card text-white bg-primary mb-3" style="max-width: 20rem; min-height: 30rem">
                                              <div class="card-header" style="text-align: center">User Split</div>
                                              <div class="card-body">
                                                <div style="max-height: 10rem; max-height: 10rem; text-align:center">                                                
                                                     <canvas id="myChart1"></canvas>
                                                </div>   
                                              </div>
                                            </div>
                                             
                                         </th>
                                         <th>
                                             <div class="card text-white bg-primary mb-3" style="max-width: 20rem;min-height: 30rem">
                                              <div class="card-header" style="text-align: center">Tickets VS Patients</div>
                                              <div class="card-body">
                                                <div style="max-height: 10rem; max-height: 10rem; text-align:center">                                                
                                                     <canvas id="myChart2"></canvas>
                                                </div>   
                                              </div>
                                            </div>
                                         </th>
                                         <th>

                                         </th>
                                                                    
                                         <th>
                                             <div class="card text-white bg-primary mb-3" style="max-width: 20rem; min-height: 30rem">
                                              <div class="card-header" style="text-align: center">Doctors and their departments.</div>
                                              <div class="card-body">
                                                <div style="max-height: 10rem; max-height: 10rem; text-align:center">                                                
                                                     <canvas id="myChart3"></canvas>
                                                </div>   
                                              </div>
                                            </div>                                           
                                         </th>
                                         </tr>  
                                 </table>
                             </div>
                        </div>
                            </center>
    

                       
                           
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



                            const ctx3 = document.getElementById('myChart3').getContext('2d');
                            const myChart3 = new Chart(ctx3, {
                                type: 'bar',
                                data: {
                                    labels: ['Denistry', 'Optometrist', 'Cardiology','Urology'],
                                    datasets: [{
                                        label: 'Departments VS Doctors',
                                        data: [<%=Denistry%>, <%=Optometrist%>, <%=Cardiology%>, <%=Urology%>],
                                        backgroundColor: [
                                            'rgba(255, 99, 132, 0.2)',
                                            'rgba(178, 54, 255, 0.2)',
                                            'rgba(255, 206, 86, 0.2)',
                                            'rgba(75, 192, 192, 0.2)'
                                            
                                        ],
                                        borderColor: [
                                            'rgba(255, 99, 132, 1)',
                                            'rgba(157, 0, 255, 1)',
                                            'rgba(255, 206, 86, 1)',
                                            'rgba(75, 192, 192, 1)'
                                        ],
                                        borderWidth: 1
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

