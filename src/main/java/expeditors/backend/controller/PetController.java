package expeditors.backend.controller;

import expeditors.backend.adoption.Adopter;
import expeditors.backend.adoption.Pet;
import expeditors.backend.service.PetService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api/pet")
public class PetController {
    private PetService petService;

    public PetController(PetService petService) {
        this.petService = petService;
    }

    @GetMapping(path = "/holamundo")
    public ResponseEntity<?> getHolaMundo() {
        return ResponseEntity.ok("Hola mundo!!");
    }

    @PostMapping
    public ResponseEntity<?> addAdopter(@RequestBody Pet pet) {
        Pet addNewPet = petService.addPet(pet);

        //URI uri = uriCreator.getUriFor(addNewAdopter.getIdAdopter());

        return ResponseEntity.ok(addNewPet);
    }

    @GetMapping("getPetById/{idPet:\\d+}")
    public ResponseEntity<?> getAdopterById(@PathVariable("idPet") int idPet) {
        Optional<Pet> pet =  petService.getPetById(idPet);
        if(pet.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("No found pet id: " + idPet);
        }
        return ResponseEntity.ok(pet);
    }

    @GetMapping(path = "/getAllPets")
    public ResponseEntity<?> getAllPets() {
        List<Pet> pets =  petService.getAllPets();
        return ResponseEntity.ok(pets);
    }

    @DeleteMapping("{idPet:\\d+}")
    public ResponseEntity<?> deletePet(@PathVariable("idPet") int idPet) {
        boolean result = petService.deletePet(idPet);
        if(!result) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("No exist Pet: " + idPet);
        }

        return ResponseEntity.ok("Pet successfully removed");
    }

    @PutMapping
    public ResponseEntity<?> updatePet(@RequestBody Pet pet) {
        Pet result = petService.updatePet(pet);
        if(result==null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("No exist pet id: " + pet.getIdPet());
        }

        return ResponseEntity.ok("Pet successfully updated");
    }
}
