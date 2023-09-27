package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅

	public ProductRepository() {
		Product Bed = new Product("P1234", "Bed", 334000);
		phone.setDescription("Bed frame, high, white, 150x200 cm");
		phone.setCategory("bed");
		phone.setManufacturer("ikea");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        
    	Product table = new Product("P1235", "보조테이블", 39900);
		notebook.setDescription("보조테이블, 앤트러싸이트/다크그레이, 53x50 cm");
		notebook.setCategory("table");
		notebook.setManufacturer("ikea");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

		Product stand = new Product("P1236", "조명", 99000);
		tablet.setDescription("탁상스탠드, 크롬도금");
		tablet.setCategory("light");
		tablet.setManufacturer("ikea");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(bed);
		listOfProducts.add(table);
		listOfProducts.add(stand);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
}