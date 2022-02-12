<?php  

shuffle($product_shuffle);

?>



<!-- New Gadgets -->
<section id="new-gadgets">
    <div class="container">
        <h4 class="font-os font-size-20">New Gadgets</h4>
        <hr>
        <!-- owl carousel -->
        <div class="owl-carousel owl-theme">
            <?php 
                //foreach fn and pass array
                foreach($product_shuffle as $item){ 
            ?>

            <div class="item py-2">
                <div class="product font-raleway">
                    <a href="<?php printf('%s?item_id=%s', 'product.php', $item['item_id'])  ?>"><img
                            src="<?php echo $item['item_image'] ??  "./assets/products/delljpg"; ?>" alt="Dell Laptop"
                            class="img-fluid"></a>
                    <div class="text-center">
                        <h6><?php echo $item['item_name'] ?? "Unknown"; ?></h6>
                        <div class="rating text-warning font-size-12">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                        </div>
                        <div class="price py-2">
                            <span><?php echo $item['item_price']; ?></span>
                        </div>
                        <button class="btn btn-warning font-size-12">Add to Cart</button>
                    </div>
                </div>
            </div>
            <?php } //closing foreach function?>
        </div>
        <!-- owl carousel -->
    </div>
</section>
<!-- New Gadgets -->