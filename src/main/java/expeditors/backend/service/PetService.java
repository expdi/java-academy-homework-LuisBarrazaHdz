package expeditors.backend.service;

import expeditors.backend.adoption.Adopter;
import expeditors.backend.adoption.Pet;
import expeditors.backend.dao.repository.PetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class PetService {
    @Autowired
    PetRepository petRepository;

    public boolean deletePet(int idPet) {
        try
        {
            petRepository.deleteById(idPet);
            return  true;
        } catch (Exception ex){
            return  false;
        }
    }

    public Pet updatePet(Pet pet) {
        pet.setAdopter(pet.getAdopter());
        return petRepository.save(pet);
    }

    public Pet addPet(Pet pet) {
        pet.setAdopter(pet.getAdopter());
        return petRepository.save(pet);
    }

    public Optional<Pet> getPetById(int id) {
        return  petRepository.findById(id);
    }
    public List<Pet> getAllPets() {
        return petRepository.findAll();
    }
}
