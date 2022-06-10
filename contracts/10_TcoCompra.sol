// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;
contract TcoCompra {
    
    uint256 public precio;                     // precio del articulo
    address payable public vendedor;       // direccion del vendedor
    address payable public comprador;        // direccion del comprador

    enum Estado { Creado, Procesando, Enviado, Cancelado , Pagada}
    Estado public estado;

    modifier validar(bool condicion_) {
        require(condicion_);
        _;
    }


    /// Solo el vendedor puede ejecutar este metodo
    error ValidarComprador();
    modifier validarComprador() {
        if (msg.sender != comprador)
            revert ValidarComprador();
        _;
    }

    /// Solo el comprador puede ejecutar este metodo
    error ValidarVendedor();
    modifier validarVendedor() {
        if (msg.sender != vendedor)
            revert ValidarVendedor();
        _;
    }

    /// El estado de la compra no es correcto
    error InvalidoEstado();
    modifier validarEstado(Estado estado_) {
        if (estado != estado_)
            revert InvalidoEstado();
        _;
    }

    /// El monto no puede ser impar
    error MontoInvalidoo();

    event Abortado();
    event CompraConfirmada();
    event ProductoRecibido();
    event VendedorReintegrada();

    /// Pone a la venta un producto.
    /// Deposita el monto del mismo en el contrato.
    constructor() payable {
        vendedor = payable(msg.sender);
        precio = msg.value / 2;
        if ((2 * precio) != msg.value)
            revert MontoInvalidoo();
    }
    /// El comprador aborta la venta del producto.
    /// Se le reintegra el monto depositado
    function abortar() external validarVendedor validarEstado(Estado.Creado)
    {
        emit Abortado();
        estado = Estado.Cancelado;
        vendedor.transfer(address(this).balance);
    }

    function confirmarCompra() external validarEstado(Estado.Creado) payable {
        require(msg.value == (2 * precio), 
                "Error: tiene que enviar el doble del precio de compra");

        emit CompraConfirmada();
        comprador = payable(msg.sender);
        estado = Estado.Procesando;
    }


    function confirmarRecibida() external validarComprador validarEstado(Estado.Procesando){
        emit ProductoRecibido();
        estado = Estado.Enviado;
        comprador.transfer(precio);
    }

    function pagarVendedor() external validarVendedor validarEstado(Estado.Enviado)
    {
        emit VendedorReintegrada();
        estado = Estado.Pagada;

        vendedor.transfer(3 * precio);
    }

}
