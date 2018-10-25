class ClienteController < ApplicationController

	def nuevoCliente
	end

	def crearCliente
		cliente = Cliente.new
		cliente.rfc = params[:rfc]
		cliente.nombre_cliente = params[:nombre_cliente]
		cliente.save
		redirect_to "/cliente/"
	end

	def todosCliente
		@todosClientes = Cliente.all
	end

	def eliminarCliente
		Cliente.destroy(params[:id])
		redirect_to "/cliente/"
	end

	def mostrarCliente
		@cliente = Cliente.find(params[:id])
	end

	def modificarCliente
		cliente = Cliente.find(params[:id])
		cliente.rfc = params[:rfc]
		cliente.nombre_cliente = params[:nombre_cliente]
		cliente.save
		redirect_to "/cliente/"
	end

end
