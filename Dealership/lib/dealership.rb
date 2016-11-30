class Dealership
@@dealerships = []
  define_method(:initialize) do |name, cars|
    @name = name
    @cars = cars
    @id = @@dealerships.length + 1
  end

  define_method(:name) do
    @name
  end

  define_method(:cars) do
    @cars
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:find) do |id_number|
    find_dealership = nil
    @@dealerships.each() do |dealership|
      if dealership.id() == id_number
        find_dealership = dealership
      end
    end
    find_dealership
  end

  define_method(:add_vehicle) do |vehicle|
    @cars.push(vehicle)
  end

  define_method(:save_all_to_dealership) do
    @cars = $vehicles
  end
end
