import multiprocessing

# Function to perform some task in parallel
def process_data(data):
    result = data * 2  # Example computation
    return result

# Function to be executed by each process in parallel
def worker_function(data, queue):
    result = process_data(data)
    queue.put(result)  # Add result to the shared queue

if __name__ == '__main__':
    # Input data to be processed
    input_data = [1, 2, 3, 4, 5]

    # Create a multiprocessing Pool with 4 worker processes
    pool = multiprocessing.Pool(processes=4)

    # Create a shared queue for storing results
    queue = multiprocessing.Manager().Queue()

    # Use the map function to distribute the input data across the worker processes
    # and execute the worker_function in parallel
    for data in input_data:
        pool.apply_async(worker_function, args=(data, queue))

    # Wait for all processes to complete and close the pool
    pool.close()
    pool.join()

    # Collect the results from the queue
    results = []
    while not queue.empty():
        result = queue.get()
        results.append(result)

    # Print the results
    print("Results: ", results)
