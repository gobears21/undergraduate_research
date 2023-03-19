#ifndef CUSTOM_SYCL_INCLUDE_SYCL_SYCL_H_
#define CUSTOM_SYCL_INCLUDE_SYCL_SYCL_H_

// debug headers
#include "SYCL/debug.hpp"

// include device headers
#include "SYCL/device.hpp"

// include device selector headers
#include "SYCL/device_selector.hpp"
#include "SYCL/device_selector/default_selector.hpp"
#include "SYCL/device_selector/cpu_selector.hpp"
#include "SYCL/device_selector/accelerator_selector.hpp"
#include "SYCL/device_selector/gpu_selector.hpp"
#include "SYCL/device_selector/host_selector.hpp"

// include platform headers
#include "SYCL/platform.hpp"

// include buffer headers
#include "SYCL/buffer.hpp"
#include "SYCL/accessor.hpp"

#include "SYCL/queue.hpp"
#include "SYCL/handler.hpp"

#ifdef BUILD_VE
#include "SYCL/nec/ve_device.hpp"
#include "SYCL/nec/ve_queue.hpp"
#include "SYCL/nec/ve_task.hpp"
#include "SYCL/nec/ve_kernel.hpp"
#endif

#endif //CUSTOM_SYCL_INCLUDE_SYCL_SYCL_H_

