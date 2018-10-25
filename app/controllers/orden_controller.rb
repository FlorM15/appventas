class OrdenController < ApplicationController
	def nuevaOrden
        @todosClientes = Cliente.all 
        @todosProductos = Producto.all 
    end

    def crearOrden
        orden  = Orden.new
        orden.cliente_id = params[:id_cliente]
        orden.producto_id = params[:id_producto]
        orden.unidad = params[:unidad]
        orden.save
        redirect_to "/orden/"
    end

    def todasOrden
        @todasOrdenes = Orden.all
    end

    def eliminarOrden
        Orden.destroy(params[:id])
        redirect_to "/orden/"
    end

    def mostrarOrden
        @orden = Orden.find(params[:id])
        @todosClientes = Cliente.all 
        @todosProductos=Producto.all 
    end
    
    def modificarOrden
        orden = Orden.find(params[:id])
        orden.cliente_id = params[:id_cliente]
        orden.producto_id = params[:id_producto]
        orden.unidad = params[:unidad]
        orden.save
        redirect_to "/orden/"
    end
end
