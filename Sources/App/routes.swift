import Vapor
import Fluent


func routes(_ app: Application) throws {
    
   
    let patientController = PatientController()
    let donersController = DonersController()

    
    
    app.post("patient", use: patientController.create)
    
    
    app.get("patient", use: patientController.all)
     

    app.put("patient", use: patientController.update)


    app.get("patient",":patientid", use: patientController.getId)
    
    app.delete("patient",":patient", use: patientController.delete)


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    app.post("doners", use: donersController.create)
    
    
    app.get("doners", use: donersController.all)
     

    app.put("doners", use: donersController.update)


    app.get("doners",":donersid", use: donersController.getId)



    app.delete("doners",":donersid", use: donersController.delete)
    
    
    //try app.register(collection: DonersController())
    
    }

    
//    //Get all data of patent
//    app.get("patient") { req in
//    Patient.query(on: req.db).all()
//    }
//
//    app.post("patient") { req -> EventLoopFuture<Patient> in
//
//        let Patient = try req.content.decode(Patient.self)
//        return Patient.create(on: req.db).map{Patient}
//    }
//
//    app.put("patient") { req -> EventLoopFuture<HTTPStatus> in
//
//    let patient = try req.content.decode(Patient.self)
//        return Patient.find(patient.id,on: req.db)
//    .unwrap(or: Abort(.notFound))
//    .flatMap {
//    $0.firstname = patient.firstname
//        return $0.update(on: req.db).transform(to: .ok)
//    }
//    }
//
//    app.delete("patient",":id") { req -> EventLoopFuture<HTTPStatus> in
//
//        Patient.find(req.parameters.get("id") ,on : req.db)
//            .unwrap(or: Abort(.notFound))
//            .flatMap{
//                $0.delete(on: req.db)
//            }.transform(to: .ok)
//    }
//
//    //Get all data of doners
//    app.get("doners") { req in
//    Doners.query(on: req.db).all()
//    }
//
//
//    app.post("doners") { req -> EventLoopFuture<Doners> in
//
//        let Doners = try req.content.decode(Doners.self)
//        return Doners.create(on: req.db).map{Doners}
//    }
//
//    // put
//
//     app.put("donors") { req -> EventLoopFuture<HTTPStatus> in
//
//     let doners = try req.content.decode(Doners.self)
//         return Doners.find(doners.id,on: req.db)
//     .unwrap(or: Abort(.notFound))
//     .flatMap {
//     $0.firstname = doners.firstname
//         return $0.update(on: req.db).transform(to: .ok)
//     }
//     }
//
//    app.delete("donors",":id") { req -> EventLoopFuture<HTTPStatus> in
//
//        Patient.find(req.parameters.get("id") ,on : req.db)
//            .unwrap(or: Abort(.notFound))
//            .flatMap{
//                $0.delete(on: req.db)
//            }.transform(to: .ok)
//    }
    
//}
