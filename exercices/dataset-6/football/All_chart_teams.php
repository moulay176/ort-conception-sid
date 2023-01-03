
 <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <form method="get" action="journee.php">
                  <input type="text" name="jrs">
                  <input type="submit" name="submit">
                </form>
              </div>
  </div>

     <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><span style="color: #92b0b1;"> EVOLUTION POINT</span> </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                     <canvas id="canvas"></canvas>
                  </div>
                </div>
    </div>



    <button id="randomizeData">Randomize Data</button>
    <script>
        var randomScalingFactor = function() {
            return (Math.random() > 0.5 ? 1.0 : -1.0) * Math.round(Math.random() * 100);
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };

        var barChartData = {
            labels: <?php echo json_encode($journeee); ?>,
            datasets: [{
                label: 'Point(s)',
                backgroundColor: "rgba(160,97,82,0.5)",
                data: <?php echo json_encode($pointt); ?>
            }]

        };
        window.onload = function() {
            var ctx = document.getElementById("canvas").getContext("2d");
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {
                    title:{
                        display:true,
                        text:"GRAPHE POINT"
                    },
                    tooltips: {
                        mode: 'label'
                    },
                    responsive: true,
                    scales: {
                        xAxes: [{
                            stacked: true,
                        }],
                        yAxes: [{
                            stacked: true
                        }]
                    }
                }
            });
        };

        $('#randomizeData').click(function() {
            $.each(barChartData.datasets, function(i, dataset) {
                dataset.backgroundColor = 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',.7)';
                dataset.data = [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()];

            });
            window.myBar.update();
        });
    </script>