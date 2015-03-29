# Transform -----------------------------------------------------

# merge
full_join(Dx_ew, Nx_ew) %>%
  # add central death rate
  mutate(mx = Dx/Nx) %>%
  # filter to cold war period/cohort
  filter(Year <= 1990, Year >= 1949) -> mort
# rename country factors
levels(mort$Country) <- c("East", "West")
# filter to infant mortality
mort %>% filter(Age == 0) -> imort

# differences in mx between east and west
mort %>% select(-Dx, -Nx) %>% spread(Country, mx) %>%
  mutate(rel_dmx = East - West) -> mort_diff
# filter to differences in infant mortality
mort_diff %>% filter(Age == 0) -> imort_diff
