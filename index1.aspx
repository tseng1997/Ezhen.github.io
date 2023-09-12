<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index1.aspx.cs" Inherits="movie20230714.index1" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>威聯電影網</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
    
TemplateMo 556 Catalog-Z

https://templatemo.com/tm-556-catalog-z

-->
</head>

<body>
    <header>
        <form id="form">
        </form>
    </header>

    <!-- Page Loader -->
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="index1.aspx">
                <i class="fas fa-film mr-2"></i>
                威聯電影網
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <form id="form1" runat="server"> 
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
		    <li class="nav-item">
                        <a class="nav-link nav-link-4" href="popular-movie1.aspx">最受歡迎的電影</a>
                    </li>                    
                    <li class="nav-item">
                        <a class="nav-link nav-link-2" href="upcoming-movies1.aspx">即將上映</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-link-3" href="now-playing-movies1.aspx">現正放映的電影</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-link-1" aria-current="page" href="top-rated-movies1.aspx">最受好評的電影</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-link-6" href="my-playlist-movie.aspx">我的片單</a>
                    </li>
                    <li class="nav-item">
                        <asp:Label ID="status" runat="server" class="nav-link"></asp:Label>
                        <%--<a class="nav-link nav-link-7" href="Default.aspx">使用者登出</a>--%>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-link-7" href="Default.aspx">登出</a>
                    </li>
                </ul>
            </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:movie20230714ConnectionString4 %>" SelectCommand="SELECT * FROM [myplaylistnew]" DeleteCommand="DELETE FROM [myplaylistnew] WHERE [id] = @id" InsertCommand="INSERT INTO [myplaylistnew] ([Sessionuser], [movieid], [movietitle], [movievote], [movieimg], [movieoverview]) VALUES (@Sessionuser, @movieid, @movietitle, @movievote, @movieimg, @movieoverview)" UpdateCommand="UPDATE [myplaylistnew] SET [Sessionuser] = @Sessionuser, [movieid] = @movieid, [movietitle] = @movietitle, [movievote] = @movievote, [movieimg] = @movieimg, [movieoverview] = @movieoverview WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Sessionuser" Type="String" />
        <asp:Parameter Name="movieid" Type="String" />
        <asp:Parameter Name="movietitle" Type="String" />
        <asp:Parameter Name="movievote" Type="String" />
        <asp:Parameter Name="movieimg" Type="String" />
        <asp:Parameter Name="movieoverview" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Sessionuser" Type="String" />
        <asp:Parameter Name="movieid" Type="String" />
        <asp:Parameter Name="movietitle" Type="String" />
        <asp:Parameter Name="movievote" Type="String" />
        <asp:Parameter Name="movieimg" Type="String" />
        <asp:Parameter Name="movieoverview" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
        </asp:SqlDataSource>

        </form>
        </div>
    </nav>

    <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll"
         data-image-src="img/hero.jpg">
        <form class="d-flex tm-search-form">
            <input class="form-control tm-search-input" type="text" placeholder="請輸入電影名" aria-label="Search">

        </form>
    </div>

    <div class="container-fluid tm-container-content tm-mt-60">
        <div class="row mb-4">
            <h2 class="col-6 tm-text-primary" id="outputDiv">
                近期上映
            </h2>
            <!--
                        <div class="col-6 d-flex justify-content-end align-items-center">
                            <form action="" class="tm-text-primary">
                                Page <input type="text" value="1" size="1" class="tm-input-paging tm-text-primary"> of 200
                            </form>
                        </div>
            -->
        </div>

        
        <!-- main -->
        <main id="main">

            <div class="movie">

                <figure class="effect-ming tm-video-item">
                    <img src="https://truth.bahamut.com.tw/s01/202002/a22c8bdc020175983d0dcb3994f9a537.JPG" alt="image">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>詳細資料</h2>
                        <a href="#">View more</a>
                    </figcaption>
                </figure>
                <div class="movie-info">
                    <h3>Movie Title</h3>
                    <span class="green">9.8</span>
                </div>

            </div>


        </main>

        <!-- row -->
        
              <!--  <div class="row tm-mb-90">
                    <div class="col-12 d-flex justify-content-between align-items-center tm-paging-col">
                        <a href="javascript:void(0);" class="btn btn-primary tm-btn-prev mb-2 disabled">Previous</a>
                        <div class="tm-paging d-flex">
                            <a href="javascript:void(0);" class="active tm-paging-link">1</a>
                            <a href="javascript:void(0);" class="tm-paging-link">2</a>
                            <a href="javascript:void(0);" class="tm-paging-link">3</a>
                            <a href="javascript:void(0);" class="tm-paging-link">4</a>
                        </div>
                        <a href="javascript:void(0);" class="btn btn-primary tm-btn-next">Next Page</a>
                    </div>
                </div>
                -->
       
    </div>
    <div id="tags"></div>
    <div id="myNav" class="overlay">

        <!-- Button to close the overlay navigation -->
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

        <!-- Overlay content -->
        <div class="overlay-content" id="overlay-content"></div>

        <a href="javascript:void(0)" class="arrow left-arrow" id="left-arrow">&#8656;</a>

        <a href="javascript:void(0)" class="arrow right-arrow" id="right-arrow">&#8658;</a>

    </div>
    
    <div class="pagination">
       
        <!--<div class="btn btn-primary tm-btn-prev  disabled" id="prev">Previous Page</div>-->
        <button class="btn-52 disabled" id="prev">
          <div class="original">上一頁</div>
          <div class="letters">
        <!-- Place each letter in its own element -->
                <span>上</span>
                <span>一</span>
                <span>頁</span>                
          </div>
        </button>
        
        <div class="tm-paging-link" id="current">1</div>
        <!--<div class="btn btn-primary tm-btn-next" id="next">Next Page</div>-->
        <button class="btn-52" id="next">
          <div class="original">下一頁</div>
          <div class="letters">
     <!-- Place each letter in its own element -->
            <span>下</span>
            <span>一</span>
            <span>頁</span>            
          </div>
        </button>
       
    </div>
    



    <script src="js/plugins.js"></script>
    <script>
        $(window).on("load", function () {
            $('body').addClass('loaded');
        });
    </script>
    <script src="js/script1.js"></script>
    <div id="result">123</div>
</body>

</html>