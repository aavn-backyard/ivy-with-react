package ch.axonivy.react.util;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import ch.axonivy.react.Product;

public class JSonUtil {
	public static List<Product> convertToProductFromJson(String jsonString){
		ArrayList<Product> products = new Gson().fromJson(jsonString, new TypeToken<List<Product>>(){}.getType());
		return products;
	}
}
