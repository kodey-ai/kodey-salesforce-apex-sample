public class OrderService {

    // Method to create an order
    public static void createOrder(String orderName, Id accountId) {
        try {
            Order__c newOrder = new Order__c(Name = orderName, Account__c = accountId, Status__c = 'New');
            insert newOrder;
            System.debug('Order created successfully. Order Id: ' + newOrder.Id);
        } catch (Exception e) {
            System.debug('Error creating order: ' + e.getMessage());
        }
    }
    
    // Method to add item to an order
    public static void addItemToOrder(Id orderId, Id productId, Integer quantity) {
        try {
            Order_Item__c newItem = new Order_Item__c(Order__c = orderId, Product__c = productId, Quantity__c = quantity);
            insert newItem;
            System.debug('Item added to order successfully. Item Id: ' + newItem.Id);
        } catch (Exception e) {
            System.debug('Error adding item to order: ' + e.getMessage());
        }
    }
    
    // Method to update order status
    public static void updateOrderStatus(Id orderId, String newStatus) {
        try {
            Order__c orderToUpdate = [SELECT Id, Status__c FROM Order__c WHERE Id = :orderId LIMIT 1];
            orderToUpdate.Status__c = newStatus;
            update orderToUpdate;
            System.debug('Order status updated successfully. Order Id: ' + orderToUpdate.Id);
        } catch (Exception e) {
            System.debug('Error updating order status: ' + e.getMessage());
        }
    }
}