package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance() {
		return instance;
	}

	public ProductRepository() {
		Product m1ove = new Product("P0529", "è�Ǿ�", 5500);
		m1ove.setDescription("�������� �ȶҾ׼�!!");
		m1ove.setCategory("�׼�");
		m1ove.setManufacturer("����");
		m1ove.setUnitsInStock(1);
		m1ove.setCondition("new");
		m1ove.setFilename("P0529.jpg");

		Product m2ove = new Product("P020529", "��������", 5600);
		m2ove.setDescription("2013�� ����ȣ ������ ���ο� ����!!");
		m2ove.setCategory("����");
		m2ove.setManufacturer("����");
		m2ove.setUnitsInStock(1);
		m2ove.setCondition("new");
		m2ove.setFilename("P020529.png");

		listOfProducts.add(m1ove);
		listOfProducts.add(m2ove);
	}

	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}