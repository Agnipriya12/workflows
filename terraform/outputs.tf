output "population_ids" {
  value = {
    for name, pop in pingone_population.pop :
    name => pop.id
  }
}