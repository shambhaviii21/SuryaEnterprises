document.addEventListener("DOMContentLoaded", function () {
    const cartTableBody = document.getElementById("cart-items");
    const totalItems = document.getElementById("total-items");
    const totalPrice = document.getElementById("total-price");

    // Remove item from cart
    cartTableBody.addEventListener("click", function (e) {
        const button = e.target.closest(".remove-btn");
        if (button) {
            const row = button.closest("tr");
            const productId = button.getAttribute("data-id");

            fetch("RemoveFromCart", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" },
                body: "productId=" + encodeURIComponent(productId)
            })
            .then(response => response.text())
            .then(responseText => {
                if (responseText.trim() === "success") {
                    row.remove(); // Remove row from UI
                    updateCartSummary(); // Update total dynamically
                }
            })
            .catch(error => console.error("Error:", error));
        }
    });

    // Handle quantity change
    cartTableBody.addEventListener("input", function (e) {
        if (e.target.classList.contains("quantity")) {
            const row = e.target.closest("tr");
            const unitPriceElement = row.querySelector(".unit-price");
            const totalPriceElement = row.querySelector(".total-price");

            if (unitPriceElement && totalPriceElement) {
                let unitPrice = parseFloat(unitPriceElement.textContent.replace(/[₹,]/g, "").trim()); // Remove ₹ & commas
                let quantity = parseInt(e.target.value) || 1;

                e.target.value = quantity; // Ensure input is valid
                let newTotal = unitPrice * quantity;
                totalPriceElement.textContent = `₹${newTotal.toFixed(2)}`; // Update product total

                updateCartSummary(); // Update cart total
                updateServerQuantity(row.getAttribute("data-id"), quantity);
            } else {
                console.error("Price element missing in row:", row);
            }
        }
    });

    // Function to update total items & total price dynamically
    function updateCartSummary() {
        let totalItemCount = 0, totalCartPrice = 0;

        document.querySelectorAll(".quantity").forEach(input => {
            totalItemCount += parseInt(input.value) || 1;
        });

        document.querySelectorAll(".total-price").forEach(priceCell => {
            let price = parseFloat(priceCell.textContent.replace(/[₹,]/g, "").trim()); // Remove ₹ & commas
            if (!isNaN(price)) {
                totalCartPrice += price;
            }
        });

        totalItems.textContent = totalItemCount; // Update total items count
        totalPrice.textContent = `₹${totalCartPrice.toFixed(2)}`; // Update total cart price
    }

    // Send quantity update to the server
    function updateServerQuantity(productId, quantity) {
        if (!productId) return;
        fetch("UpdateCartQuantity", {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: `productId=${encodeURIComponent(productId)}&quantity=${encodeURIComponent(quantity)}`
        })
        .catch(error => console.error("Error updating quantity:", error));
    }
});
