public class OrderItemService {

    // Method to create an order item
    public static void createOrderItem(Id orderId, Id productId, Integer quantity) {
        try {
            Order_Item__c newOrderItem = new Order_Item__c(Order__c = orderId, Product__c = productId, Quantity__c = quantity);
            insert newOrderItem;
            System.debug('Order item created successfully. Item Id: ' + newOrderItem.Id);
        } catch (Exception e) {
            System.debug('Error creating order item: ' + e.getMessage());
        }
    }
    
    // Method to update order item quantity
    public static void updateOrderItemQuantity(Id orderItemId, Integer newQuantity) {
        try {
            Order_Item__c orderItemToUpdate = [SELECT Id, Quantity__c FROM Order_Item__c WHERE Id = :orderItemId LIMIT 1];
            orderItemToUpdate.Quantity__c = newQuantity;
            update orderItemToUpdate;
            System.debug('Order item quantity updated successfully. Item Id: ' + orderItemToUpdate.Id);
        } catch (Exception e) {
            System.debug('Error updating order item quantity: ' + e.getMessage());
        }
    }
    
    // Method to calculate subtotal for an order item
    public static Decimal calculateSubtotal(Id orderItemId) {
        try {
            Order_Item__c orderItem = [SELECT Id, Quantity__c, Product__c.Price__c FROM Order_Item__c WHERE Id = :orderItemId LIMIT 1];
            Decimal subtotal = orderItem.Quantity__c * orderItem.Product__c.Price__c;
            System.debug('Subtotal calculated successfully for Item Id: ' + orderItem.Id);
            return subtotal;
        } catch (Exception e) {
            System.debug('Error calculating subtotal: ' + e.getMessage());
            return null;
        }
    }
}