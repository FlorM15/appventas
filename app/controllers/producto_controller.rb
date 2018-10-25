class ProductoController < ApplicationController
	def nuevoProducto
    end

    def crearProducto
        producto  = Producto.new
        producto.nombre = params[:nombre]
        producto.precio = params[:precio]
        producto.save
        redirect_to "/producto/"
    end

    def todosProducto
        @todosProducto = Producto.all
    end

    def eliminarProducto
		Producto.destroy(params[:id])
		redirect_to "/producto/"
    end
    
    def mostrarProducto
        @producto = Producto.find(params[:id])
    end
    
    def modificarProducto
        producto = Producto.find(params[:id])
		producto.nombre = params[:nombre]
		producto.precio = params[:precio]
		producto.save
		redirect_to "/producto/"
	end
end
