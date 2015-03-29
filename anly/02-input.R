# Input ---------------------------------------------------------

# download hmd deaths and exposures for east and west germany
Dx_ew <- HMDget(.country = c("DEUTE", "DEUTW"), .measure = "Dx",
                .username = username, .password = password)
Nx_ew <- HMDget(.country = c("DEUTE", "DEUTW"), .measure = "Nx",
                .username = username, .password = password)
