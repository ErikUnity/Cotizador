﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Text;

namespace Cotizador
{
    public class Mensajes
    {
        public string Nombre = "";
        public string Correo = "";
        public string TipoDeVehiculo = "";
        public string Linea = "";
        public string Marca = "";
        public string Modelo = "";
        public string ValorMercado = "";
        public int MensajeTipo = 1;

        // This method will be called when the thread is started.
        public void DoWork()
        {
            Cotizadores Cotizar = new Cotizadores();
            Correo enviando = new Correo();
            StringBuilder msg = Cotizar.ObtieneMensaje(MensajeTipo);

            enviando.EnviarCorreo(Correo, msg, Nombre, MensajeTipo); 


        }
        public void RequestStop()
        {
            _shouldStop = true;
        }
        // Volatile is used as hint to the compiler that this data
        // member will be accessed by multiple threads.
        private volatile bool _shouldStop;
    }

    public class EnvioDeCorreoRapido
    {

        public static void EjecutarProceso(string Correo, string TipoDeVehiculo, string Linea, string Marca, string Modelo, string ValorMercado, int MensajeTipo, string Nombre)
        {

            // Create the thread object. This does not start the thread.
            Mensajes mensaje = new Mensajes();
            mensaje.Correo = Correo;
            mensaje.TipoDeVehiculo = TipoDeVehiculo;
            mensaje.Linea = Linea;
            mensaje.Marca = Marca;
            mensaje.Modelo = Modelo;
            mensaje.ValorMercado = ValorMercado;
            mensaje.MensajeTipo = MensajeTipo;
            mensaje.Nombre = Nombre;

            Thread workerThread = new Thread(mensaje.DoWork);

            // Start the worker thread.
            workerThread.Start();

            // Loop until worker thread activates.
            while (!workerThread.IsAlive) ;

            // Put the main thread to sleep for 1 millisecond to
            // allow the worker thread to do some work:
            Thread.Sleep(1);

            // Request that the worker thread stop itself:
            mensaje.RequestStop();

            // Use the Join method to block the current thread 
            // until the object's thread terminates.
            workerThread.Join();

        }
    }


}