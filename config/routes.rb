Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get '/cliente/nuevoCliente'
	post '/cliente/crearCliente'
	get '/cliente/', to: 'cliente#todosCliente'
	get '/cliente/eliminarCliente/:id', to: 'cliente#eliminarCliente'
	get '/cliente/mostrarCliente/:id', to: 'cliente#mostrarCliente'
	post 'cliente/modificar/:id', to: 'cliente#modificarCliente'

	get '/producto/nuevoProducto'
	post '/producto/crearProducto'
	get 'producto/', to: 'producto#todosProducto'
	get '/producto/eliminarProducto/:id', to: 'producto#eliminarProducto'
	get '/producto/mostrarProducto/:id', to: 'producto#mostrarProducto'
	post '/producto/modificarProducto/:id', to: 'producto#modificarProducto'

	get '/orden/nuevaOrden'
	post '/orden/crearOrden'
	get '/orden/', to: 'orden#todasOrden'
	get '/orden/eliminarOrden/:id', to: 'orden#eliminarOrden'
	get '/orden/mostrarOrden/:id', to: 'orden#mostrarOrden'
	post '/orden/modificarOrden/:id', to: 'orden#modificarOrden'

	#get '/', to: 'orden#registros'
end
