# To compare the randomness of different methods using kstest(Kolmogorov-Smirnov Test)-method
import numpy as np
from scipy.stats import kstest




file_path_lfsr= 'E:\\verilog codes\\random number generators\\lfsr algorithm\\lfsr_out.txt'
#for lfsr

file_path_linear= 'E:\\verilog codes\\random number generators\\Linear Congruential\\linear_out.txt'
#for linear congruential

file_path_mid= 'E:\\verilog codes\\random number generators\\mid-square method\\mid_out.txt'
#for mid-square



lines = []
min_value=0
max_value=65536
# Open the file in read mode
def compute_ks(file_path):
    with open(file_path,'r') as file: 
        # Read each line and append to the list
        for line in file:
            # Remove any trailing newlines or spaces
            lines.append(line.strip())

    # Print the list to verify the content


    large_random_numbers_np=np.array(line,dtype=np.int16)

    # Calculate basic statistics
    mean_value = np.mean(large_random_numbers_np)
    std_deviation = np.std(large_random_numbers_np)
    



    # Normalize the data for the KS test

    normalized_data = (large_random_numbers_np - min_value) / (max_value - min_value)
    ks_statistic, p_value = kstest(normalized_data, 'uniform')
    return ks_statistic,p_value

# less value indicate that more fit to uniform distribution-more randomness
k_value_mid,p_mid=compute_ks(file_path_mid)
k_value_lfsr,p_lfsr=compute_ks(file_path_lfsr)
k_value_linear,p_linear=compute_ks(file_path_linear)

print("The ks-value and p value of mid-square:",k_value_mid,p_mid)
print("The ks-value and p value of lfsr:",k_value_lfsr,p_lfsr)
print("The ks-value and p value of  linear:",k_value_linear,p_linear)




