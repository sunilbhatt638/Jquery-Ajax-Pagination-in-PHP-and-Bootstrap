<!DOCTYPE html>
<html lang="en">
<head>
    <title>AJAX Pagination with PHP and Bootstrap</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">
    #overlay {background-color: rgba(0, 0, 0, 0.6);z-index: 999;position: absolute;left: 0;top: 0;width: 100%;height: 100%;display: none;}
    #overlay div {position:absolute;left:50%;top:50%;margin-top:-32px;margin-left:-32px;}
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(document).on("click", ".page", function(){
                $.ajax({
                        url: "getresult.php",
                        type: "GET",
                        data:  {page:$(this).attr("data-page")},
                        beforeSend: function(){$("#overlay").show();},
                        success: function(data)
                        {
                            $("#pagination-result").html(data);
                            setInterval(function() {$("#overlay").hide(); },500);
                        },
                        error: function() 
                        {}          
                   });
            });
        });
    </script>
</head>
<body>
    <div id="overlay"><div><img src="loading.gif" width="100px" height="100px"/></div></div>
    <?php
    require_once("dbclass.php");
    require_once("pagination.class.php");
    $dbConnection  = new Connection();
    $perPage       = new sbpagination();
    $sqlquery      = "SELECT * from pagination ";
    $query         = $sqlquery."limit 0," . $perPage->perpage; 
    $getData       = $dbConnection->runQuery($query);
    $rowcount      = $dbConnection->numRows($sqlquery);
    $showpagination = $perPage->getAllPageLinks($rowcount);
    ?>
    <div class="container">
        <h2>AJAX Pagination with PHP and Bootstrap</h2>
        <div class="col-md-12">
            <div id="pagination-result">
                <table class="table" style="width: 30%;">
                    <tbody>
                        <?php
                        foreach ($getData as $data)
                        {
                            echo "<tr><td>".$data["id"]."</td><td>".$data["country_name"]."</td><tr>";
                        }
                        ?>
                    </tbody>
                </table>
                <?php
                if(!empty($showpagination))
                {
                    ?>
                    <ul class="pagination">
                        <?php echo $showpagination; ?>
                    </ul>
                    <?php
                }
                ?>
            </div>
        </div>
    </div>
</body>
</html>
