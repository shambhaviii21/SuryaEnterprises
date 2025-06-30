<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    if (session == null || session.getAttribute("adminLoggedIn") == null) {
        response.sendRedirect("adminLogin.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=YourFontName&display=swap" rel="stylesheet">

   
    <!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <title>Surya Enterprises</title>
<style>
.btn-outline-secondary:hover {
    background-color: #343a40;
    color: white;
    border-color: #343a40;
    transition: all 0.3s ease;
}

 
.product-info p,
.product-title,
.price-tag p {
    font-family: 'Poppins', sans-serif;
}
.btn.btn-primary {
    padding: 6px 18px;
    font-size: 14px;
}

.price-tag {
    min-width: 200px;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: flex-end; /* Push price to the far right */
    padding-left: 30px; /* Add more spacing from the content */
}

.price-tag p {
    font-family: 'Poppins', sans-serif;
    font-size: 22px;
    font-style: italic;
    font-weight: 300;
    margin: 0;
}
.product-wrapper {
    padding: 30px 0; /* Top and bottom spacing */
}


  .container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.row {
    width: 80%;
    max-width: 1200px;
}

.col-md-12 {
    display: flex;
    align-items: center;
    justify-content: space-between; /* Ensures proper spacing */
    text-align: left; /* Keeps text left-aligned */
}

.product-img {
    width: 250px; /* Adjust image size */
    height: 250px;
    object-fit: cover;
    margin-right: 20px;
}

.product-info {
    flex-grow: 1; /* Allows text to take up remaining space */
    max-width: 600px;
}

.product-actions {
    margin-left: auto; /* Moves Add to Cart button to the right */
}

.btn-primary {
    width: 100%;
    padding: 10px;
    font-size: 1.2rem;
    font-weight: 500;
    background-color: black;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

.btn-primary:hover {
    background-color: #333;
}


</style>
</head>
<body>
    <div id="main">
        <div id="nav">
            <h1>Surya Enterprises</h1>
            <div id="nav-links">
                <h2><a href="#alphabet">Shop Now</a></h2>
                <h2><a href="#page-5">Contact Us</a></h2>
                <h2><a href="#page-7">Feedback</a></h2>
                <h2><a href="#page-10">About Us</a></h2>
               <h2><a href="cart.jsp">Cart</a></h2>
 


            </div>
        </div>
        
    </div>
    

      <div id="center">
            <div id="content">
                <img src="pictures/main.jpg" alt="">
                <div id="overlay">
                    <div id="over1">
                        <h1>
                            Total Packaging Solutions
                        </h1>
                        <h2>01</h2>
                    </div>

                    <div id="over2">
                        
                    </div>
                </div>
            </div>
        </div> 
        



        <div id="scroll">
            <div id="container">
                <img src="https://i.pinimg.com/736x/ca/03/8d/ca038d5bc39634b17d2018fdeed9a99d.jpg" alt="">
                <img src="https://i.pinimg.com/736x/de/7c/cf/de7ccf69d7bdb05576c2553c0b1f7674.jpg" alt="">
                <img src="https://i.pinimg.com/736x/08/14/ee/0814ee098999333163b1c97b876c8713.jpg" alt="">
                <img src="https://i.pinimg.com/736x/56/52/4a/56524ab89e76ba5e9b095afc0547299d.jpg" alt="">
                <img src="https://i.pinimg.com/736x/a9/8b/05/a98b0576d75037a0c39b5f96b9a9a9b1.jpg" alt="">
                <img src="https://i.pinimg.com/736x/79/4e/25/794e250414aecdebbdda71e8c1f4676d.jpg" alt="">
                <img src="https://i.pinimg.com/736x/c3/4d/0b/c34d0b464723fb3c41405d93599067d1.jpg" alt="">
                <img src="https://images.unsplash.com/photo-1534639077088-d702bcf685e7?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="">
               <img src="https://plus.unsplash.com/premium_photo-1677340725070-0f11edc53d48?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="">
                <img src="https://media.istockphoto.com/id/946769474/photo/stretch-foil.jpg?s=2048x2048&w=is&k=20&c=xlL_JZ37JU3Z4lf2YJ7WbzkQRP3jl21s-_Iazea9H-Y=" alt="">
                <img src="https://images.unsplash.com/photo-1617912760717-06f3976cf18c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="">
                <img src="https://i.pinimg.com/736x/8c/cc/12/8ccc1296f87237f377c01911d5a44971.jpg" alt="">

            </div>
            <div id="container">
                <img src="https://i.pinimg.com/736x/ca/03/8d/ca038d5bc39634b17d2018fdeed9a99d.jpg" alt="">
                <img src="https://i.pinimg.com/736x/de/7c/cf/de7ccf69d7bdb05576c2553c0b1f7674.jpg" alt="">
                <img src="https://i.pinimg.com/736x/08/14/ee/0814ee098999333163b1c97b876c8713.jpg" alt="">
                <img src="https://i.pinimg.com/736x/56/52/4a/56524ab89e76ba5e9b095afc0547299d.jpg" alt="">
                <img src="https://i.pinimg.com/736x/a9/8b/05/a98b0576d75037a0c39b5f96b9a9a9b1.jpg" alt="">
                <img src="https://i.pinimg.com/736x/79/4e/25/794e250414aecdebbdda71e8c1f4676d.jpg" alt="">
                <img src="https://i.pinimg.com/736x/c3/4d/0b/c34d0b464723fb3c41405d93599067d1.jpg" alt="">
                <img src="https://images.unsplash.com/photo-1534639077088-d702bcf685e7?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="">
               <img src="https://plus.unsplash.com/premium_photo-1677340725070-0f11edc53d48?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="">
                <img src="https://media.istockphoto.com/id/946769474/photo/stretch-foil.jpg?s=2048x2048&w=is&k=20&c=xlL_JZ37JU3Z4lf2YJ7WbzkQRP3jl21s-_Iazea9H-Y=" alt="">
                <img src="https://images.unsplash.com/photo-1617912760717-06f3976cf18c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="">
                <img src="https://i.pinimg.com/736x/8c/cc/12/8ccc1296f87237f377c01911d5a44971.jpg" alt="">

            </div>
            
        </div>

        <div id="alphabet">
           
            <h6>PRODUCTS</h6>
        </div>

<div class="container my-5">
    <div class="row">
       <!-- Product 1 -->
<div class="product-wrapper">
  <div class="col-md-12 d-flex align-items-center justify-content-between">
    <img src="pictures/polyester strap.jpg" class="product-img" alt="Polyester Strap">

    <div class="product-info flex-grow-1 mx-4">
      <h5 class="product-title text-center">Polyester Strap</h5>
      <p>High Strength & Durability - Ensures secure packaging without breakage.</p>
      <p>Weather & Chemical Resistant - Withstands extreme conditions without damage.</p>
      <p>Safe Handling - Rust-free, non-splitting, and scratch-resistant.</p>
      <p>Eco-Friendly Alternative - A sustainable replacement for steel straps.</p>
      <p>Ideal for: Industrial packaging, shipping, and cargo security.</p>

      <div class="text-center mt-2">
        <form action="AddToCart" method="post">
          <input type="hidden" name="productName" value="Polyester Strap">
          <input type="hidden" name="price" value="128">
        </form>
      </div>
    </div>
    
    <div class="text-center mt-2 d-flex flex-column align-items-center gap-2">
      <form action="AddToCart" method="post">
        <input type="hidden" name="productName" value="Polyester Strap">
        <input type="hidden" name="price" value="128">
        <button type="submit" class="btn btn-primary btn-sm px-3 py-1">Add to Cart</button>
      </form>

      <!-- Compare Button -->
      <button type="button" class="btn btn-outline-secondary btn-sm px-3 py-1" data-bs-toggle="modal" data-bs-target="#compareModal1">
        Compare Prices
      </button>
    </div>

    <div class="price-tag d-flex align-items-center" style="min-width: 160px; height: 100%;">
      <p class="mb-0">₹128 per kg</p>
    </div>
  </div>
</div>

<!-- Modal for Polyester Strap -->
<div class="modal fade" id="compareModal1" tabindex="-1" aria-labelledby="compareModalLabel1" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="compareModalLabel1">Price Comparison - Polyester Strap</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th>Seller</th>
              <th>Price per kg</th>
              <th>Savings</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Surya Enterprises</td>
              <td>₹128</td>
              <td class="text-success">Best Price</td>
            </tr>
            <tr>
              <td>Local Market</td>
              <td>₹150</td>
              <td>₹22</td>
            </tr>
            <tr>
              <td>Other Online</td>
              <td>₹145</td>
              <td>₹17</td>
            </tr>
          </tbody>
        </table>
        <p class="text-center text-muted mb-0">You save up to ₹22 per kg with Surya Enterprises!</p>
      </div>
    </div>
  </div>
</div>

      
      

<!-- Product 2 -->
<div class="product-wrapper">
  <div class="col-md-12 d-flex align-items-center justify-content-between">
    <img src="pictures/cotton waste.jpg" class="product-img" alt="Cotton Waste White">

    <div class="product-info flex-grow-1 mx-4">
      <h5 class="product-title text-center">Cotton Waste White</h5>
      <p>Highly Absorbent - Effectively wipes oil, grease, and dirt.</p>
      <p>Eco-Friendly Solution - Recyclable and biodegradable material.</p>
      <p>Versatile Use - Suitable for machinery cleaning, polishing, and industrial use.</p>
      <p>Soft texture - Safe for delicate surfaces and equipment.</p>
      <p>Ideal for: Manufacturing industries, workshops, and automotive maintenance.</p>

      <div class="text-center mt-2">
        <form action="AddToCart" method="post">
          <input type="hidden" name="productName" value="Cotton Waste White">
          <input type="hidden" name="price" value="85">
        </form>
      </div>
    </div>

    <div class="text-center mt-2 d-flex flex-column align-items-center gap-2">
      <form action="AddToCart" method="post">
        <input type="hidden" name="productName" value="Cotton Waste White">
        <input type="hidden" name="price" value="85">
        <button type="submit" class="btn btn-primary btn-sm px-3 py-1">Add to Cart</button>
      </form>

      <!-- Compare Button -->
      <button type="button" class="btn btn-outline-secondary btn-sm px-3 py-1" data-bs-toggle="modal" data-bs-target="#compareModal2">
        Compare Prices
      </button>
    </div>

    <div class="price-tag d-flex align-items-center" style="min-width: 160px; height: 100%;">
      <p class="mb-0">₹85 per kg</p>
    </div>
  </div>
</div>

<!-- Modal for Cotton Waste White -->
<div class="modal fade" id="compareModal2" tabindex="-1" aria-labelledby="compareModalLabel2" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="compareModalLabel2">Price Comparison - Cotton Waste White</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th>Seller</th>
              <th>Price per kg</th>
              <th>Savings</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Surya Enterprises</td>
              <td>₹85</td>
              <td class="text-success">Best Price</td>
            </tr>
            <tr>
              <td>Local Market</td>
              <td>₹100</td>
              <td>₹15</td>
            </tr>
            <tr>
              <td>Other Online</td>
              <td>₹95</td>
              <td>₹10</td>
            </tr>
          </tbody>
        </table>
        <p class="text-center text-muted mb-0">You save up to ₹15 per kg with Surya Enterprises!</p>
      </div>
    </div>
  </div>
</div>




<!-- Product 3 -->
<div class="product-wrapper">
  <div class="col-md-12 d-flex align-items-center justify-content-between">
    <img src="pictures/packing tapes.jpg" class="product-img" alt="Packing Tape">

    <div class="product-info flex-grow-1 mx-4">
      <h5 class="product-title text-center">Packing Tape</h5>
      <p>Strong Adhesion - Ensures secure and tamper-proof packaging.</p>
      <p>Multiple Sizes Available - From 12mm to 48mm for all packing needs.</p>
      <p>High Durability - Resistant to tearing and moisture.</p>
      <p>Multipurpose Use - Suitable for cartons, office supplies, and logistics.</p>
      <p>Ideal for: E-commerce packaging, office use, and warehouse storage.</p>

      <div class="text-center mt-2">
        <form action="AddToCart" method="post">
          <input type="hidden" name="productName" value="Packing Tape">
          <input type="hidden" name="price" value="2350">
        </form>
      </div>
    </div>

    <div class="text-center mt-2 d-flex flex-column align-items-center gap-2">
      <form action="AddToCart" method="post">
        <input type="hidden" name="productName" value="Packing Tape">
        <input type="hidden" name="price" value="2350">
        <button type="submit" class="btn btn-primary btn-sm px-3 py-1">Add to Cart</button>
      </form>

      <!-- Compare Button -->
      <button type="button" class="btn btn-outline-secondary btn-sm px-3 py-1" data-bs-toggle="modal" data-bs-target="#compareModal3">
        Compare Prices
      </button>
    </div>

    <div class="price-tag d-flex align-items-center" style="min-width: 160px; height: 100%;">
      <p class="mb-0">₹2350 per box</p>
    </div>
  </div>
</div>

<!-- Modal for Packing Tape -->
<div class="modal fade" id="compareModal3" tabindex="-1" aria-labelledby="compareModalLabel3" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="compareModalLabel3">Price Comparison - Packing Tape</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th>Seller</th>
              <th>Price per box</th>
              <th>Savings</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Surya Enterprises</td>
              <td>₹2350</td>
              <td class="text-success">Best Price</td>
            </tr>
            <tr>
              <td>Local Market</td>
              <td>₹2600</td>
              <td>₹250</td>
            </tr>
            <tr>
              <td>Other Online</td>
              <td>₹2499</td>
              <td>₹149</td>
            </tr>
          </tbody>
        </table>
        <p class="text-center text-muted mb-0">You save up to ₹250 per box with Surya Enterprises!</p>
      </div>
    </div>
  </div>
</div>

<!-- Product 4 -->
<div class="product-wrapper">
  <div class="col-md-12 d-flex align-items-center justify-content-between">
    <img src="pictures/epe foam roll.jpg" class="product-img" alt="EPE Foam Roll">

    <div class="product-info flex-grow-1 mx-4">
      <h5 class="product-title text-center">EPE Foam Roll</h5>
      <p>Premium Cushioning - Provides superior protection against impact.</p>
      <p>Lightweight & Flexible - Easy to handle and cut for custom packaging.</p>
      <p>Moisture & Chemical Resistant - Protects products from environmental damage.</p>
      <p>High-Quality Fabric - Ensures longevity and reusability.</p>
      <p>Ideal for: Electronics, furniture, and glassware packaging.</p>

      <div class="text-center mt-2">
        <form action="AddToCart" method="post">
          <input type="hidden" name="productName" value="EPE Foam Roll">
          <input type="hidden" name="price" value="2450">
        </form>
      </div>
    </div>

    <div class="text-center mt-2 d-flex flex-column align-items-center gap-2">
      <form action="AddToCart" method="post">
        <input type="hidden" name="productName" value="EPE Foam Roll">
        <input type="hidden" name="price" value="2450">
        <button type="submit" class="btn btn-primary btn-sm px-3 py-1">Add to Cart</button>
      </form>

      <!-- Compare Button -->
      <button type="button" class="btn btn-outline-secondary btn-sm px-3 py-1" data-bs-toggle="modal" data-bs-target="#compareModal4">
        Compare Prices
      </button>
    </div>

    <div class="price-tag d-flex align-items-center" style="min-width: 160px; height: 100%;">
      <p class="mb-0">₹2450 per roll</p>
    </div>
  </div>
</div>

<!-- Modal for EPE Foam Roll -->
<div class="modal fade" id="compareModal4" tabindex="-1" aria-labelledby="compareModalLabel4" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="compareModalLabel4">Price Comparison - EPE Foam Roll</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th>Seller</th>
              <th>Price per roll</th>
              <th>Savings</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Surya Enterprises</td>
              <td>₹2450</td>
              <td class="text-success">Best Price</td>
            </tr>
            <tr>
              <td>Local Market</td>
              <td>₹2750</td>
              <td>₹300</td>
            </tr>
            <tr>
              <td>Other Online</td>
              <td>₹2650</td>
              <td>₹200</td>
            </tr>
          </tbody>
        </table>
        <p class="text-center text-muted mb-0">You save up to ₹300 per roll with Surya Enterprises!</p>
      </div>
    </div>
  </div>
</div>



<!-- Product 5 -->
<div class="product-wrapper">
  <div class="col-md-12 d-flex align-items-center justify-content-between">
    <img src="pictures/stretch film.jpg" class="product-img" alt="Stretch Film">

    <div class="product-info flex-grow-1 mx-4">
      <h5 class="product-title text-center">Stretch Film</h5>
      <p>Superior Elasticity - Wraps securely to keep products intact.</p>
      <p>High Transparency - Ensures clear product visibility.</p>
      <p>Tear & Puncture Resistant - Withstands pressure and external stress.</p>
      <p>Easy Application - Clings perfectly for hassle-free wrapping.</p>
      <p>Ideal for: Warehousing, shipping, and food packaging.</p>

      <div class="text-center mt-2">
        <form action="AddToCart" method="post">
          <input type="hidden" name="productName" value="Stretch Film">
          <input type="hidden" name="price" value="135">
        </form>
      </div>
    </div>

    <div class="text-center mt-2 d-flex flex-column align-items-center gap-2">
      <form action="AddToCart" method="post">
        <input type="hidden" name="productName" value="Stretch Film">
        <input type="hidden" name="price" value="135">
        <button type="submit" class="btn btn-primary btn-sm px-3 py-1">Add to Cart</button>
      </form>

      <!-- Compare Button -->
      <button type="button" class="btn btn-outline-secondary btn-sm px-3 py-1" data-bs-toggle="modal" data-bs-target="#compareModal5">
        Compare Prices
      </button>
    </div>

    <div class="price-tag d-flex align-items-center" style="min-width: 160px; height: 100%;">
      <p class="mb-0">₹135 per kg</p>
    </div>
  </div>
</div>

<!-- Modal for Stretch Film -->
<div class="modal fade" id="compareModal5" tabindex="-1" aria-labelledby="compareModalLabel5" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="compareModalLabel5">Price Comparison - Stretch Film</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th>Seller</th>
              <th>Price per kg</th>
              <th>Savings</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Surya Enterprises</td>
              <td>₹135</td>
              <td class="text-success">Best Price</td>
            </tr>
            <tr>
              <td>Local Market</td>
              <td>₹155</td>
              <td>₹20</td>
            </tr>
            <tr>
              <td>Other Online</td>
              <td>₹148</td>
              <td>₹13</td>
            </tr>
          </tbody>
        </table>
        <p class="text-center text-muted mb-0">You save up to ₹20 per kg with Surya Enterprises!</p>
      </div>
    </div>
  </div>
</div>

<!-- Product 6 -->
<div class="product-wrapper">
  <div class="col-md-12 d-flex align-items-center justify-content-between">
    <img src="pictures/bubble film.jpg" class="product-img" alt="Bubble Film Roll">

    <div class="product-info flex-grow-1 mx-4">
      <h5 class="product-title text-center">Bubble Film Roll</h5>
      <p>Ultimate Protection – Shields fragile items from shocks and vibrations.</p>
      <p>Lightweight & Cost-Effective – Reduces shipping costs.</p>
      <p>Waterproof & Dustproof – Keeps items safe from environmental damage.</p>
      <p>Reusable & Recyclable – Eco-friendly alternative for sustainable packaging.</p>
      <p>Ideal for: Electronics, glassware, and fragile product shipping.</p>

      <div class="text-center mt-2">
        <form action="AddToCart" method="post">
          <input type="hidden" name="productName" value="Bubble Film Roll">
          <input type="hidden" name="price" value="626">
        </form>
      </div>
    </div>

    <div class="text-center mt-2 d-flex flex-column align-items-center gap-2">
      <form action="AddToCart" method="post">
        <input type="hidden" name="productName" value="Bubble Film Roll">
        <input type="hidden" name="price" value="626">
        <button type="submit" class="btn btn-primary btn-sm px-3 py-1">Add to Cart</button>
      </form>

      <!-- Compare Button -->
      <button type="button" class="btn btn-outline-secondary btn-sm px-3 py-1" data-bs-toggle="modal" data-bs-target="#compareModal6">
        Compare Prices
      </button>
    </div>

    <div class="price-tag d-flex align-items-center" style="min-width: 160px; height: 100%;">
      <p class="mb-0">₹626 per roll</p>
    </div>
  </div>
</div>

<!-- Modal for Bubble Film Roll -->
<div class="modal fade" id="compareModal6" tabindex="-1" aria-labelledby="compareModalLabel6" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="compareModalLabel6">Price Comparison - Bubble Film Roll</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th>Seller</th>
              <th>Price per roll</th>
              <th>Savings</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Surya Enterprises</td>
              <td>₹626</td>
              <td class="text-success">Best Price</td>
            </tr>
            <tr>
              <td>Local Market</td>
              <td>₹700</td>
              <td>₹74</td>
            </tr>
            <tr>
              <td>Other Online</td>
              <td>₹675</td>
              <td>₹49</td>
            </tr>
          </tbody>
        </table>
        <p class="text-center text-muted mb-0">You save up to ₹74 per roll with Surya Enterprises!</p>
      </div>
    </div>
  </div>
</div>

</div>
</div>


        
        

        <div id="page-5">
            <h1>Contact Us</h1>
            <div class="elem">
                <h4>Address</h4>
                <img src="https://i.pinimg.com/736x/c5/10/0e/c5100e8a18041b317c93c26fcfb173f3.jpg" alt="">
                <div class="elem-part2">
                    <h3>112/1, Lal Dath Road, Civil Lines, Haldwani(Nainital), Uttarakhand - 263139 </h3>
                    
                </div>
            </div>
            <div class="elem">
                <h4>Phone No.</h4>
                <img src="https://i.pinimg.com/736x/1f/9c/7a/1f9c7a456eef8c52595a55eebb1858e8.jpg" alt="">
                <div class="elem-part2">
                    <h3>+91 8958645905 </h3>
                </div>
            </div>
            <div class="elem">
                <h4>Email</h4>
                <img src="https://i.pinimg.com/736x/77/0e/af/770eaf2731bdcaec40b122a33c967513.jpg" alt="">
                <div class="elem-part2">
                    <h3>suryaenterprises.hld@gmail.com</h3>

                </div>
            </div>
            <div class="elem">
                <h4>Working hours</h4>
                <img src="https://i.pinimg.com/736x/69/2a/0e/692a0efb74a19cea4ba1acd9b8e13f6f.jpg" alt="">
                <div class="elem-part2">
                    <h3>9am-5pm</h3>
                </div>
            </div>
        </div>

        <div id="page-6">
                <div id="page-6-right-text">
                    <h1>Find us here!</h1>
                    <p>112/1, Lal Dath Road, Civil Lines, Haldwani(Nainital), Uttarakhand - 263139</p>
                    <iframe 
    src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d6658.782625301722!2d79.51767045147486!3d29.22055499742535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sSurya%20Enterprises%20112%2F1%2C%20Lal%20Dath%20Road%2C%20Civil%20Lines%2C%20Haldwani(Nainital)%2C%20Uttarakhand%20-%20263139!5e0!3m2!1sen!2sin!4v1742397772723!5m2!1sen!2sin" 
    width="600" 
    height="450" 
    style="border:0;" 
    allowfullscreen 
    loading="lazy" 
    referrerpolicy="no-referrer-when-downgrade">
</iframe>
                    
                    
                </div>
        </div>

        <div id="page-7">
            <div class="feedback-container">
                <h2>We Value Your Feedback</h2>
                <p>Your feedback helps us improve our products and services.</p>
                <form id="feedback-form" action="FeedbackServlet" method="post">

                    <div class="form-group">
                        <label for="name">Full Name</label>
                        <input type="text" id="name" name="name" placeholder="Enter your name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                    <div class="form-group">
                        <label for="rating">Rate Us</label>
                        <select id="rating" name="rating" required>
    <option value="">Select a rating</option>
    <option value="5">⭐ ⭐ ⭐ ⭐ ⭐ Excellent</option>
    <option value="4">⭐ ⭐ ⭐ ⭐ Very Good</option>
    <option value="3">⭐ ⭐ ⭐ Good</option>
    <option value="2">⭐ ⭐ Fair</option>
    <option value="1">⭐ Poor</option>
</select>

                    </div>
                    <div class="form-group">
                        <label for="message">Your Feedback</label>
                        <textarea id="message" name="message" rows="4" placeholder="Write your feedback..." required></textarea>
                    </div>
                    <button type="submit" class="submit-btn">Submit Feedback</button>
                </form>
            </div>
        </div>

        <div id="page-9-marque">
            <h1>Surya enterprises</h1>
            <h1>Surya enterprises</h1>
            <h1>Surya enterprises</h1>
            <h1>Surya enterprises</h1>
            <h1>Surya enterprises</h1>

        </div>

        <div id="page-10">
            <div id="page-10-blog">
                <h1>ABOUT US</h1>
            </div>
            <div id="page-10-content">
                <h2>
                    Surya Enterprises is a trusted provider of total packaging solutions, offering high-quality materials for industrial and commercial needs. With a commitment to durability and sustainability, we supply a wide range of products, including polyester straps, packing tapes, EPE foam rolls, and bubble films. Our goal is to deliver reliable, cost-effective, and eco-friendly packaging solutions that ensure product safety and efficiency. Backed by years of expertise, we cater to businesses with customized packaging solutions and excellent customer service.</h2>
               
            </div>
            <div id="page-10-content">
                <img src="pictures/about us.jpg" alt="">
            </div>
        </div>


          <div id="footer">
    <div class="footer-content">
        <div class="footer-left">
            <h2>Surya Enterprises<span class="registered">®</span></h2>
            <p>Total Packaging Solution</p>
        </div>
        <div class="footer-middle">
            <p>112/1, Lal Dath Road, Civil Lines, Haldwani (Nainital), Uttarakhand - 263139</p>
            <p>+91 8958645905</p>
            <p>suryaenterprises.hld@gmail.com</p>
            <p>Working Hours: 9am - 5pm</p>
        </div>
        <div class="footer-right">
            <a href="#alphabet">Shop Now</a> |
            <a href="#page-10">About Us</a>
            <div class="social-icons">
                <a href="#"><i class="ri-instagram-fill"></i></a>
                <a href="#"><i class="ri-twitter-x-fill"></i></a>
                <a href="#"><i class="ri-facebook-fill"></i></a>
                <a href="#"><i class="ri-youtube-fill"></i></a>
                <a href="#"><i class="ri-linkedin-fill"></i></a>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>© All content copyright</p>
    </div>
</div>
          
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/index.js"></script>
</body>
</html>