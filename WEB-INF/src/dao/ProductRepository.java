package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅

	public ProductRepository() {
		Product Bed = new Product("P1234", "Bed", 334000);
		Bed.setDescription("Bed frame, high, white, 150x200 cm");
		Bed.setCategory("bed");
		Bed.setManufacturer("ikea");
		Bed.setUnitsInStock(1000);
		Bed.setCondition("New");
        
    	Product table = new Product("P1235", "보조테이블", 39900);
		table.setDescription("보조테이블, 앤트러싸이트/다크그레이, 53x50 cm");
		table.setCategory("table");
		table.setManufacturer("ikea");
		table.setUnitsInStock(1000);
		table.setCondition("Refurbished");

		Product light = new Product("P1236", "조명", 99000);
		light.setDescription("탁상스탠드, 크롬도금");
		light.setCategory("light");
		light.setManufacturer("ikea");
		light.setUnitsInStock(1000);
		light.setCondition("Old");
        
		Product picture = new Product("P1237", "그림", 39000);
		picture.setDescription("그림, 사슴들, 50x70 cm");
		picture.setCategory("pictures");
		picture.setManufacturer("ikea");
		picture.setUnitsInStock(1000);
		picture.setCondition("Old");    
        
		Product cloth = new Product("P1238", "옷", 59900);
		cloth.setDescription("목욕가운, 다크그레이, S/M");
		cloth.setCategory("cloths");
		cloth.setManufacturer("ikea");
		cloth.setUnitsInStock(1000);
		cloth.setCondition("Old"); 
        
		Product kitchen = new Product("P1239", "그릇", 7900);
		kitchen.setDescription("그릇, 혼합 색상, 10 cm");
		kitchen.setCategory("bowl");
		kitchen.setManufacturer("ikea");
		kitchen.setUnitsInStock(1000);
		kitchen.setCondition("Old");         

		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(Bed);
		listOfProducts.add(table);
		listOfProducts.add(light);
        listOfProducts.add(picture);
        listOfProducts.add(cloth);
        listOfProducts.add(kitchen);
        

		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
}