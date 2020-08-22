using AppliancesStore.API.Models.Input;

namespace AppliancesStore.API.Validators
{
    public class OrderValidator
    {
        public OrderValidator()
        {
        }

        public string CheckOrderInputModel(OrderInputModel inputModel)
        {
            if (string.IsNullOrWhiteSpace(inputModel.FirstName)) return ("Enter the first name");
            if (string.IsNullOrWhiteSpace(inputModel.Email)) return ("Enter the email");
            if (string.IsNullOrWhiteSpace(inputModel.Phone)) return ("Enter the phone");
            if (inputModel.CourierDelivery == null) return ("Choose the way of delivery");
            if (inputModel.Products.Count < 1) return ("Put at least one product in the order");
            return "";
        }
    }
}
