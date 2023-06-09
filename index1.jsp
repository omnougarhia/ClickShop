<%@ page import="models.Users" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Add Tailwind CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css"
      integrity="sha512-KWahO8OxJxS0hSfhfj6E5V6XDEMQCn1V7J1PSy2skVzD5xI+95V7YxlZZoWgZAZ3q3f2AKcyHjs+WzEe1GjUIw=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
      integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
      crossorigin="anonymous"></script>

      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <title>Swift Cart || Ecommerce website</title>
  </head>

  <body>
    <!-- Navigation Bar -->
    <% Users user=(Users)session.getAttribute("user"); %>
    
    <% if(user != null) { %>
    
    <script>
      Swal.fire({
      position: 'top-end',
      icon: 'success',
      title: 'Login Successfully',
      showConfirmButton: false,
      timer: 1500
      })
    </script>

<% } %>

    <nav class="flex items-center justify-between bg-white p-4 shadow-md">
      <a href="#" class="text-xl font-bold text-gray-800">Swift Cart</a>
      <ul class="flex">
        <li><a href="My-Cart" class="mx-4 text-gray-600 hover:text-gray-800" style="font-family: cursive;">Profile</a></li>
        <li><a href="My-Orders" class="mx-4 text-gray-600 hover:text-gray-800" style="font-family: cursive;" >My-Orders</a></li>
        <li><a href="cart.jsp" class="mx-4 text-gray-600 hover:text-gray-800" style="font-family: cursive;">MyCart</a></li>
      </ul>
        <% if(user !=null) { %>
          <div class="dropdown">
            <button class="btn bg-primary text-white dropdown-toggle mr-5" type="button" data-toggle="dropdown" aria-expanded="false">
              <%= user.getName() %>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Update Profile</a>
              <a class="dropdown-item" href="del.do">Delete Account</a>
              <a class="dropdown-item" href="logout.do">LogOut</a>
            </div>
          </div>

          <% } else { %>
            <button class="rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700 hover:text"><a href="login-outer.jsp">
                Sign In</a></button>
            <% } %>
    </nav>

    <!-- banner section -->
    <section class="text-gray-600 body-font">
      <div class="container px-5 py-24 mx-auto flex flex-col">
        <div class="lg:w-4/6 mx-auto">
          <div class="rounded-lg h-64 overflow-hidden">
            <img alt="content" class="object-cover object-center h-full w-full" src="https://dummyimage.com/1200x500">
          </div>
          
          
        </div>
      </div>
    </section>
    <!-- Banner Section -->
    <section class="bg-gray-200 py-12 px-4">
      <div class="container mx-auto flex flex-wrap items-center">
        <div class="w-full md:w-1/2">
          <h1 class="mb-4 text-4xl font-bold leading-tight">Shop the Latest Collection</h1>
          <p class="mb-8 text-lg text-gray-700">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
            tempoyr incididunt ut labore et dolore magna aliqua.</p>
          <a href="#" class="rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700"> Shop Now </a>
        </div>
        <div class="w-full md:w-1/2">
          <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="mx-auto" />
        </div>
      </div>
    </section>

    <!-- Featured Products Section - A -->
    <section class="py-12 px-4">
      <div class="container mx-auto">
        <h2 class="mb-4 text-4xl font-bold leading-tight">Featured Products</h2>
        <div class="-mx-4 flex flex-wrap">
          <div class="mb-8 w-full px-4 md:w-1/4">
            <div class="overflow-hidden rounded-lg bg-white shadow-md">
              <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
              <div class="p-4">
                <h3 class="text -2xl mb-2 font-bold">Product Name</h3>
                <p class="text-gray-700">$99.00</p>
                <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                  Cart</button>
              </div>
            </div>
          </div>
          <div class="mb-8 w-full px-4 md:w-1/4">
            <div class="overflow-hidden rounded-lg bg-white shadow-md">
              <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
              <div class="p-4">
                <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                <p class="text-gray-700">$99.00</p>
                <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                  Cart</button>
              </div>
            </div>
          </div>
          <div class="mb-8 w-full px-4 md:w-1/4">
            <div class="overflow-hidden rounded-lg bg-white shadow-md">
              <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
              <div class="p-4">
                <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                <p class="text-gray-700">$99.00</p>
                <a href="addcart.do?id=2" class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                  Cart</a>
              </div>
            </div>
          </div>
          <div class="mb-8 w-full px-4 md:w-1/4">
            <div class="overflow-hidden rounded-lg bg-white shadow-md">
              <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
              <div class="p-4">
                <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                <p class="text-gray-700">$99.00</p>
                <a href="addcart.do?id=1" class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                  Cart</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="flex items-center justify-center bg-gradient-to-r from-rose-50 via-sky-50 to-teal-50 ">
        <div class="flex flex-col lg:flex-row p-4 space-x-4 max-w-7xl justify-around w-full lg:h-60 items-center ">
          <div class="h-40 w-[70%] md:w-1/4 flex items-center justify-center text-3xl font-bold">Tailblocks is the best
            website for Tailwind CSS Blocks</div>
          <div class="h-40 w-[70%] md:w-1/4 flex items-center justify-center">
            <div class="flex-col space-y-2">
              <div class="text-5xl font-bold">15k+</div>
              <div class="text-sm font-medium text-gray-600">Tailblocks has more than 15k+ visitors per month.</div>
            </div>
          </div>
          <div class="h-40 w-[70%] md:w-1/4 flex items-center justify-center">
            <div class="flex-col space-y-2">
              <div class="text-5xl font-bold">1.2M+</div>
              <div class="text-sm font-medium text-gray-600">Tailblocks has more than 1.2M+ total users.</div>
            </div>
          </div>
          <div class="h-40 w-[70%] md:w-1/4 flex items-center justify-center">
            <div class="flex-col space-y-2">
              <div class="text-5xl font-bold">69k</div>
              <div class="text-sm font-medium text-gray-600">Tailblocks has gained 69k+ users last month.</div>
            </div>
          </div>
        </div>
      </div>
      <script src="https://cdn.tailwindcss.com"></script>




      <!-- Section B -->

      <section class="py-12 px-4">
        <div class="container mx-auto">
          <h2 class="mb-4 text-4xl font-bold leading-tight">Beauty-Products</h2>
          <div class="-mx-4 flex flex-wrap">
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md">
                <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="text -2xl mb-2 font-bold">Product Name</h3>
                  <p class="text-gray-700">$99.00</p>
                  <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                    Cart</button>
                </div>
              </div>
            </div>
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md">
                <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                  <p class="text-gray-700">$99.00</p>
                  <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                    Cart</button>
                </div>
              </div>
            </div>
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md">
                <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                  <p class="text-gray-700">$99.00</p>
                  <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                    Cart</button>
                </div>
              </div>
            </div>
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md">
                <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                  <p class="text-gray-700">$99.00</p>
                  <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                    Cart</button>
                </div>
              </div>
            </div>
          </div>
        </div>




        <!-- Section Above Cards (1)-->
        <section class="body-font text-gray-600">
          <div class="container mx-auto px-5 py-24">
            <div class="-mx-4 -mb-10 flex flex-wrap text-center">
              <div class="mb-10 px-4 sm:w-1/2">
                <div class="h-64 overflow-hidden rounded-lg">
                  <img alt="content" class="h-full w-full object-cover object-center"
                    src="https://source.unsplash.com/random/1201x501" />
                </div>
                <h2 class="title-font mt-6 mb-3 text-2xl font-medium text-gray-900">Buy YouTube Videos</h2>
                <p class="text-base leading-relaxed">Williamsburg occupy sustainable snackwave gochujang. Pinterest
                  cornhole brunch, slow-carb neutra irony.</p>
                <button
                  class="mx-auto mt-6 flex rounded border-0 bg-indigo-500 py-2 px-5 text-white hover:bg-indigo-600 focus:outline-none">Button</button>
              </div>
              <div class="mb-10 px-4 sm:w-1/2">
                <div class="h-64 overflow-hidden rounded-lg">
                  <img alt="content" class="h-full w-full object-cover object-center"
                    src="https://source.unsplash.com/random/1202x502" />
                </div>
                <h2 class="title-font mt-6 mb-3 text-2xl font-medium text-gray-900">The Catalyzer</h2>
                <p class="text-base leading-relaxed">Williamsburg occupy sustainable snackwave gochujang. Pinterest
                  cornhole brunch, slow-carb neutra irony.</p>
                <button
                  class="mx-auto mt-6 flex rounded border-0 bg-indigo-500 py-2 px-5 text-white hover:bg-indigo-600 focus:outline-none">Button</button>
              </div>
            </div>
          </div>
        </section>

        <section class="py-12 px-4">
          <div class="container mx-auto">
            <h2 class="mb-4 text-4xl font-bold leading-tight">Electronics-Products</h2>
            <div class="-mx-4 flex flex-wrap">
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md">
                  <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="text -2xl mb-2 font-bold">Product Name</h3>
                    <p class="text-gray-700">$99.00</p>
                    <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                      Cart</button>
                  </div>
                </div>
              </div>
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md">
                  <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                    <p class="text-gray-700">$99.00</p>
                    <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                      Cart</button>
                  </div>
                </div>
              </div>
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md">
                  <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                    <p class="text-gray-700">$99.00</p>
                    <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                      Cart</button>
                  </div>
                </div>
              </div>
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md">
                  <img src="https://source.unsplash.com/random/800x600" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                    <p class="text-gray-700">$99.00</p>
                    <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                      Cart</button>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <section class="body-font text-gray-600">
            <div class="container mx-auto px-5 py-24">
              <div class="-mx-4 -mb-10 flex flex-wrap text-center">
                <div class="mb-10 px-4 sm:w-1/2">
                  <div class="h-64 overflow-hidden rounded-lg">
                    <img alt="content" class="h-full w-full object-cover object-center"
                      src="https://source.unsplash.com/random/1201x501" />
                  </div>
                  <h2 class="title-font mt-6 mb-3 text-2xl font-medium text-gray-900">Buy The Product</h2>
                  <p class="text-base leading-relaxed">Williamsburg occupy sustainable snackwave gochujang. Pinterest
                    cornhole brunch, slow-carb neutra irony.</p>
                  <button
                    class="mx-auto mt-6 flex rounded border-0 bg-indigo-500 py-2 px-5 text-white hover:bg-indigo-600 focus:outline-none">Buy
                    Now</button>
                </div>
                <div class="mb-10 px-4 sm:w-1/2">
                  <div class="h-64 overflow-hidden rounded-lg">
                    <img alt="content" class="h-full w-full object-cover object-center"
                      src="https://source.unsplash.com/random/1202x502" />
                  </div>
                  <h2 class="title-font mt-6 mb-3 text-2xl font-medium text-gray-900">The Catalyzer</h2>
                  <p class="text-base leading-relaxed">Williamsburg occupy sustainable snackwave gochujang. Pinterest
                    cornhole brunch, slow-carb neutra irony.</p>
                  <button
                    class="mx-auto mt-6 flex rounded border-0 bg-indigo-500 py-2 px-5 text-white hover:bg-indigo-600 focus:outline-none">Buy
                    Now </button>
                </div>
              </div>
            </div>
          </section>



          <div class="flex justify-center">
            <div class=" flex md:flex-row flex-col px-4 py-2 my-10 gap-y-7 gap-x-7 max-w-7xl ">
              <div
                class="bg-gradient-to-t from-gray-900 to-gray-600 border border-gray-200 rounded-xl drop-shadow-md shadow-current p-5 h-auto w-[300px] hover:shadow-lg hover:transform hover:scale-105 duration-500 ease-in-out ">
                <div class="flex flex-col justify-center items-center text-white p-2 ">
                  <div class="text-3xl ">Mover</div>
                  <div class="flex justify-center my-3 font-medium md:tracking-tighter ">
                    <div class="text-2xl md:text-3xl mt-[3px] md:mt-[1px]">£</div>
                    <div class="text-3xl md:text-5xl">6.99</div>
                    <div class="text-lg md:text-xl mt-[9px] md:mt-[20px]">/mo</div>
                  </div>
                  <div
                    class="px-8 py-1 rounded-3xl font-medium bg-white text-stone-900 hover:bg-gray-100 cursor-pointer">
                    <a href=''>Order Now</a>
                  </div>
                  <div
                    class="text-white text-sm my-4 border-t border-white flex flex-col justify-center items-center h-60">
                    <div class="m-1">All basic features</div>
                    <div class="m-1">Drip course content</div>
                  </div>
                </div>
              </div>
              <div
                class="bg-gradient-to-b from-orange-500 to-yellow-500 border border-gray-200 rounded-xl drop-shadow-md shadow-current p-5 h-auto w-[300px] hover:shadow-lg hover:transform hover:scale-105 duration-500 ease-in-out ">
                <div class="flex flex-col justify-center items-center text-white p-2 ">
                  <div class="text-3xl ">Shaker</div>
                  <div class="flex justify-center my-3 font-medium md:tracking-tighter ">
                    <div class="text-2xl md:text-3xl mt-[3px] md:mt-[1px]">£</div>
                    <div class="text-3xl md:text-5xl">9.99</div>
                    <div class="text-lg md:text-xl mt-[9px] md:mt-[20px]">/mo</div>
                  </div>
                  <div
                    class="px-8 py-1 rounded-3xl font-medium bg-white text-stone-900 hover:bg-gray-100 cursor-pointer">
                    <a href=''>Order Now</a>
                  </div>
                  <div
                    class="text-white text-sm my-4 border-t border-white flex flex-col justify-center items-center h-60">
                    <div class="m-1">All basic features</div>
                    <div class="m-1">Advanced tracking</div>
                    <div class="m-1">Onboarding + Migration assistance</div>
                    <div class="m-1">Drip course content</div>
                    <div class="m-1">Affiliates</div>
                  </div>
                </div>
              </div>
              <div
                class="bg-gradient-to-br from-blue-700 via-blue-800 to-gray-900 border border-gray-200 rounded-xl drop-shadow-md shadow-current p-5 h-auto w-[300px] hover:shadow-lg hover:transform hover:scale-105 duration-500 ease-in-out ">
                <div class="flex flex-col justify-center items-center text-white p-2 ">
                  <div class="text-3xl ">Earthquaker</div>
                  <div class="flex justify-center my-3 font-medium md:tracking-tighter ">
                    <div class="text-2xl md:text-3xl mt-[3px] md:mt-[1px]">£</div>
                    <div class="text-3xl md:text-5xl">9.99</div>
                    <div class="text-lg md:text-xl mt-[9px] md:mt-[20px]">/mo</div>
                  </div>
                  <div
                    class="px-8 py-1 rounded-3xl font-medium bg-white text-stone-900 hover:bg-gray-100 cursor-pointer">
                    <a href=''>Order Now</a>
                  </div>
                  <div
                    class="text-white text-sm my-4 border-t border-white flex flex-col justify-center items-center h-60">
                    <div class="m-1">All basic features</div>
                    <div class="m-1">Advanced tracking</div>
                    <div class="m-1">Onboarding + Migration assistance</div>
                    <div class="m-1">Drip course content</div>
                    <div class="m-1">Affiliates</div>
                    <div class="m-1">Multiple Payments</div>
                    <div class="m-1">ACH payments</div>
                    <div class="m-1">Team Licenses</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <script src="https://cdn.tailwindcss.com"></script>


          <!-- Footer Section -->
          <footer class="body-font text-gray-600">
            <div class="container mx-auto flex flex-col items-center px-5 py-8 sm:flex-row">
              <a class="title-font flex items-center justify-center font-medium text-gray-900 md:justify-start">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round"
                  stroke-linejoin="round" stroke-width="2" class="h-10 w-10 rounded-full bg-indigo-500 p-2 text-white"
                  viewBox="0 0 24 24">
                  <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
                </svg>
                <span class="ml-3 text-xl">WebDeveloper</span>
              </a>
              <p class="mt-4 text-sm text-gray-500 sm:ml-4 sm:mt-0 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:pl-4">
                © 2023 PoweredAI —
                <a href="https://twitter.com/knyttneve" class="ml-1 text-gray-600" rel="noopener noreferrer"
                  target="_blank">@Vaibhav</a>
              </p>
              <span class="mt-4 inline-flex justify-center sm:ml-auto sm:mt-0 sm:justify-start">
                <a class="text-gray-500">
                  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    class="h-5 w-5" viewBox="0 0 24 24">
                    <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                  </svg>
                </a>
                <a class="ml-3 text-gray-500">
                  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    class="h-5 w-5" viewBox="0 0 24 24">
                    <path
                      d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z">
                    </path>
                  </svg>
                </a>
                <a class="ml-3 text-gray-500">
                  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    class="h-5 w-5" viewBox="0 0 24 24">
                    <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
                    <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
                  </svg>
                </a>
                <a class="ml-3 text-gray-500">
                  <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                    stroke-width="0" class="h-5 w-5" viewBox="0 0 24 24">
                    <path stroke="none"
                      d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
                    <circle cx="4" cy="4" r="2" stroke="none"></circle>
                  </svg>
                </a>
              </span>
            </div>
          </footer>
          <!-- </section>  -->
  </body>

  </html>